// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public ssArray;

    function createSSArray() public {
        SimpleStorage sStorage = new SimpleStorage();
        ssArray.push(sStorage);
    }

    function sfStore(uint256 ssIndex, uint256 ssNum) public {
        SimpleStorage sStorage = ssArray[ssIndex];
        sStorage.store(ssNum);
    }

    function sfGet(uint256 ssIndex) public view returns(uint256) {
        SimpleStorage sStorage = ssArray[ssIndex];
        return sStorage.retrieve();
    }
}