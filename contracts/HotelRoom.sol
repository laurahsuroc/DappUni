// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract HotelRoom {  // Vacant  // Occupied
    enum Statuses{ 
        Vacant, 
        Occupied 
    }
    Statuses public currentStatus;

    event Occupied(address _occupant, uint _value)

    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
        currentStatus = Statuses.Vacant; 
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, " Currently occupied."); // Check Status
        _;
    }

    modifier costs(uint _amount) {
        require( msg.value >= amount, "Not enough ether provided. " // Check price 
        _;
    }

    function book () public payable onlyWhileVacant cost (2 ether) {
        currentStatus = Statuses.Occupied;

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true); 

        emit Occupy(msg.sender, msg.value);
    } 
    
    // Booking a hotel room and open it. Hand to the booking like a vending machine.
    // Ether payments: How to pay with cryptocurrency inside the smart contracts
    // Modifiers: How to use function modifiers?
    // Visibility: How to set the visibility of a function?
    // Events: How to work with solidity events?
    // Enums: 
}