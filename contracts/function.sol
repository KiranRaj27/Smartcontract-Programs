// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Function {
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    function named() public pure returns (uint x, bool b, uint y) {
        return (1, true, 2);
    }

    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = false;
        y = 2;
    }

    function destructuringAssignment()
        public
        pure
        returns (uint, bool, uint, uint, uint)
    {
        (uint i, bool b, uint j) = returnMany();

        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    function arrayInput(uint[] memory _arr) public {}

    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}

contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return
            someFuncWithManyInputs({
                a: address(0),
                b: true,
                c: "",
                x: 1,
                y: 3,
                z: 4
            });
    }
}
