// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Shogi {
    enum ShogiPiece {
        // user_piece_number
        A_Fu_1, // 0
        A_Fu_2, // 1
        A_Fu_3, // 2
        A_Fu_4,
        A_Fu_5,
        A_Fu_6,
        A_Fu_7,
        A_Fu_8,
        A_Fu_9,
        A_Kaku,
        A_Hisha,
        A_Kyosha_1,
        A_Kyosha_2,
        A_Kei_1,
        A_Kei_2,
        A_Gin_1,
        A_Gin_2,
        A_Kin_1,
        A_Kin_2,
        A_Gyoku,
        B_Fu_1,
        B_Fu_2,
        B_Fu_3,
        B_Fu_4,
        B_Fu_5,
        B_Fu_6,
        B_Fu_7,
        B_Fu_8,
        B_Fu_9,
        B_Kaku,
        B_Hisha,
        B_Kyosha_1,
        B_Kyosha_2,
        B_Kei_1,
        B_Kei_2,
        B_Gin_1,
        B_Gin_2,
        B_Kin_1,
        B_Kin_2,
        B_Gyoku
    }

    struct PlaceInfo {
        ShogiPiece shogiPiece;
        bool isFront;
    }

    mapping(uint=> mapping(uint => PlaceInfo)) pos;

    function getPositionInfo(uint _x, uint _y) public view returns (PlaceInfo memory) {
        return pos[_x][_y];
    }

    function setPositionInfo(uint _x, uint _y, ShogiPiece shogiPiece, bool isFront) public returns (PlaceInfo memory){
        pos[_x][_y] =  PlaceInfo(shogiPiece, isFront);
        return pos[_x][_y];
    }

}
