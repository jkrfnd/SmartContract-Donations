// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donations {
    uint256 public DonationsForEnvironment;
    uint256 public DonationsForEducation;
    uint256 public DonationsForMedical;
    uint256 public totalDonations;

    event DonationsUpdated(
        uint256 DonationsForEnvironment,
        uint256 DonationsForEducation,
        uint256 DonationsForMedical,
        uint256 totalDonations
    );

    function updateDonations(
        uint256 _DonationsForEnvironment,
        uint256 _DonationsForEducation,
        uint256 _DonationsForMedical
    ) public {
        require(
            _DonationsForEnvironment > 0 || _DonationsForEducation > 0 || _DonationsForMedical > 0,
            "Please enter a donation amount"
        );

        DonationsForEnvironment += _DonationsForEnvironment;
        DonationsForEducation += _DonationsForEducation;
        DonationsForMedical += _DonationsForMedical;

        totalDonations = DonationsForEnvironment + DonationsForEducation + DonationsForMedical;

        emit DonationsUpdated(
            DonationsForEnvironment,
            DonationsForEducation,
            DonationsForMedical,
            totalDonations
        );
    }
}
