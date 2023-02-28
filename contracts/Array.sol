// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract MyContract {
    // Arrays 
    uint[] public uintArray = [1, 2, 3];  // a list of number 
    string [] public stringArray = ["apple", "banana", "carrot"];
    string [] public values;
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addvalue(string memory _value) public {
        values.push(_value);
    }
    // get the link of the value 
    function valueCount() public view returns (uint) {
        return values.length;
    }

}