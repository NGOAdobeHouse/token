// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract TokenLock {
    uint256 private constant LOCK_DURATION = 365 days;  // Lock duration of 1 year
    uint256 private lockReleaseDate;
    uint256 private totalLockedAmount;
    address private contractOwner;
    IERC20 private tokenContract;

    struct TeamMember {
        address memberAddress;
        uint256 lockedAmount;
        uint256 releasedAmount;
    }

    TeamMember[] private teamMembers;

    event TokensLocked(address indexed teamMember, uint256 lockedAmount);
    event TokensReleased(address indexed teamMember, uint256 releasedAmount);

    constructor(address _tokenContract) {
        contractOwner = msg.sender;
        tokenContract = IERC20(_tokenContract);
        lockReleaseDate = block.timestamp + LOCK_DURATION;
    }

    modifier onlyOwner() {
        require(msg.sender == contractOwner, "Only the contract owner can call this function.");
        _;
    }

    function lockTokens(address[] memory addresses, uint256[] memory amounts) external onlyOwner {
        require(addresses.length == amounts.length, "Input array lengths do not match.");

        for (uint256 i = 0; i < addresses.length; i++) {
            address teamMember = addresses[i];
            uint256 lockedAmount = amounts[i];

            require(teamMember != address(0), "Invalid team member address");
            require(lockedAmount > 0, "Invalid locked amount");

            totalLockedAmount += lockedAmount;

            teamMembers.push(TeamMember({
                memberAddress: teamMember,
                lockedAmount: lockedAmount,
                releasedAmount: 0
            }));

            emit TokensLocked(teamMember, lockedAmount);
        }
    }

    function releaseTokens() external {
        require(block.timestamp >= lockReleaseDate, "Tokens are still locked");

        for (uint256 i = 0; i < teamMembers.length; i++) {
            TeamMember storage teamMember = teamMembers[i];
            uint256 remainingAmount = teamMember.lockedAmount - teamMember.releasedAmount;

            if (remainingAmount > 0) {
                uint256 releaseAmount = remainingAmount / 10;  // Release 10% of the remaining amount
                teamMember.releasedAmount += releaseAmount;

                require(tokenContract.transfer(teamMember.memberAddress, releaseAmount), "Token transfer failed");

                emit TokensReleased(teamMember.memberAddress, releaseAmount);
            }
        }
    }
}