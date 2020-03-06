//
//  N型字母.swift
//  Algorithm
//
//  Created by pirensen on 2020/3/2.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation
//https://leetcode-cn.com/problems/zigzag-conversion/
//case
//let testString: String = "LEETCODEISHIRING"
//print(convert(testString, 3))

func convert(_ s: String, _ numRows: Int) -> String {
    var appendStr: String = ""
    let characterArr: Array = Array(s)
    for num in 1...numRows {
        var leftSpace: Int = numRows - 2 - (num - 1)
        var rightSpace: Int = numRows - 2 - (numRows - num)
        if (leftSpace < 0) {
            leftSpace = 0;
        }
        if (rightSpace < 0) {
            rightSpace = 0;
        }

        var tempString: String = ""
        var tempIndex: Int = 0
        var rowNumber: Int = 0

        while tempIndex < characterArr.count {
            tempString.append(characterArr[tempIndex])
            if (rowNumber % 2 == 0) {
                if (leftSpace > 0) {
                    tempString.append(characterArr[tempIndex + leftSpace + 1])
                }
                if (rightSpace > 0) {
                    tempString.append(characterArr[tempIndex + rightSpace + leftSpace + 1])
                }
            } else {
                if (rightSpace > 0) {
                    tempString.append(characterArr[tempIndex + rightSpace + 1])
                }
                if (leftSpace > 0) {
                    tempString.append(characterArr[tempIndex + rightSpace + leftSpace + 1])
                }
            }

            rowNumber = rowNumber + 1
            tempIndex = rowNumber * (2 * numRows - 2)
        }

        appendStr.append(tempString)
    }



    return appendStr
}

