// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract stringConvertor{
    function stringtoBytes(string memory source) public pure returns (bytes32 result)
    {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0)
                {       return 0x0;     }
                        assembly
        {       result := mload(add(source, 32))    }
    }
}