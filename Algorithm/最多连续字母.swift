//
//  最多连续字母.swift
//  Algorithm
//
//  Created by pirensen on 2020/3/2.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//case
//print("max lenght == %@", lengthOfLongestSubstring("pwwkew"));

//func lengthOfLongestSubstring(_ s: String) -> Int {
//    if(s == ""){
//        return 0
//    }
//    var maxStr = String()
//    var curStr = String()
//    for char in s{
//        while curStr.contains(char) {
//            curStr.remove(at: curStr.startIndex)
//        }
//        curStr.append(char)
//        if(curStr.count > maxStr.count){
//            maxStr = curStr
//        }
//    }
//    return maxStr.count
//}

func lengthOfLongestSubstring(_ s: String) -> Int {
    if (s.count == 0) {
        return 0
    }
    var mapDicaionary: Dictionary = [String: Int]()

    let stringArr: Array = Array(s)
    for (index, value) in stringArr.enumerated() {
        print("%d ===", mapDicaionary)
        var currentLength: Int = 0
        var lastIndex: Int = index

        for (secIndex, secvalue) in stringArr.enumerated() {
            if (secvalue == value) && (index != secIndex) {
                if abs(secIndex - lastIndex) > currentLength {
                    currentLength = abs(secIndex - lastIndex)
                }
                lastIndex = secIndex;
            }
        }

        if (mapDicaionary.keys.contains(String(value))) {
            let existLength: Int = mapDicaionary[String(value)] ?? 0
            if (existLength < currentLength) {
                mapDicaionary[String(value)] = currentLength
            }
        } else {
            mapDicaionary[String(value)] = currentLength
        }
    }

    var maxLength: Int = 1
    for lengthValue: Int in mapDicaionary.values {
        if (lengthValue > maxLength) {
            maxLength = lengthValue
        }
    }


    return maxLength
}
