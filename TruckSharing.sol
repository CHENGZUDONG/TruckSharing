pragma solidity ^0.8.0;

contract TruckSharing {
    struct TruckBooking {
        uint256 orderId;
        address user;
        uint256 truckId;
        uint256 startTime;
        uint256 endTime;
        bool isActive;
    }

    mapping(uint256 => TruckBooking) public truckBookings;
    uint256 public bookingCounter;

    function bookTruck(uint256 orderId, uint256 truckId, uint256 startTime, uint256 endTime) public {
        require(startTime < endTime, "Invalid booking times");
        require(trucks[truckId].truckId != 0, "Truck does not exist");
        require(truckBookings[orderId].orderId == 0, "Order already booked");

        truckBookings[bookingCounter] = TruckBooking(orderId, msg.sender, truckId, startTime, endTime, true);
        bookingCounter++;
    }

    function cancelBooking(uint256 orderId) public {
        require(truckBookings[orderId].orderId != 0, "Booking does not exist");
        require(truckBookings[orderId].user == msg.sender, "Not authorized");

        truckBookings[orderId].isActive = false;
    }

    function getActiveBookings() public view returns (uint256[] memory) {
        uint256[] memory activeBookings;
        for (uint256 i = 0; i < bookingCounter; i++) {
            if (truckBookings[i].isActive && truckBookings[i].endTime > block.timestamp) {
                activeBookings[i] = truckBookings[i].orderId;
            }
        }
        return activeBookings;
    }
}
