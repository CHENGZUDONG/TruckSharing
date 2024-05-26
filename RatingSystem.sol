// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RatingSystem {
    struct User {
        string name;
        uint8 rating;
        uint ratingCount;
        bool exists;
    }

    struct Truck {
        string name;
        address owner;
        uint8 rating;
        uint ratingCount;
        bool exists;
    }

    mapping(address => User) public users;
    mapping(uint => Truck) public trucks;
    uint public truckCount;

    event UserRegistered(address userAddress, string name);
    event TruckListed(uint truckId, string name, address owner);
    event UserRated(address userAddress, uint8 rating);
    event TruckRated(uint truckId, uint8 rating);

    function registerUser(string memory name) public {
        require(!users[msg.sender].exists, "User already registered");

        users[msg.sender] = User(name, 0, 0, true);
        emit UserRegistered(msg.sender, name);
    }

    function listTruck(string memory name) public {
        require(users[msg.sender].exists, "User not registered");

        trucks[truckCount] = Truck(name, msg.sender, 0, 0, true);
        emit TruckListed(truckCount, name, msg.sender);
        truckCount++;
    }

    function rateUser(address userAddress, uint8 rating) public {
        require(users[userAddress].exists, "User not registered");
        require(rating >= 1 && rating <= 5, "Rating must be between 1 and 5");

        User storage user = users[userAddress];
        user.rating = uint8((user.rating * user.ratingCount + rating) / (user.ratingCount + 1));
        user.ratingCount++;
        emit UserRated(userAddress, rating);
    }

    function rateTruck(uint truckId, uint8 rating) public {
        require(trucks[truckId].exists, "Truck not listed");
        require(rating >= 1 && rating <= 5, "Rating must be between 1 and 5");

        Truck storage truck = trucks[truckId];
        truck.rating = uint8((truck.rating * truck.ratingCount + rating) / (truck.ratingCount + 1));
        truck.ratingCount++;
        emit TruckRated(truckId, rating);
    }

    function getUserRating(address userAddress) public view returns (uint8) {
        require(users[userAddress].exists, "User not registered");
        return users[userAddress].rating;
    }

    function getTruckRating(uint truckId) public view returns (uint8) {
        require(trucks[truckId].exists, "Truck not listed");
        return trucks[truckId].rating;
    }
}
