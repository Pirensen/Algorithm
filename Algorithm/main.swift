//
//  main.swift
//  NodeCal
//
//  Created by pirensen on 2020/3/6.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

func nodeOperate(_ inputArray: Array<Int>) -> Array<Int> {
    let reversvArray: Array<Int> = inputArray.reversed()
    var outPutArray: Array<Int> = inputArray.reversed()
    var removeIndexArr: Array<Int> = []
    
    for (subIndex, subNum) in reversvArray.enumerated() {
        var isCanBeZero: Bool = false
        var sumNumber: Int = subNum
        var tempIndex: Array<Int> = [subIndex]
        
        for (foreIndex, foreNum) in reversvArray.enumerated() {
            if (foreIndex > subIndex) {
                tempIndex.append(foreIndex)
                sumNumber = sumNumber + foreNum
                if (sumNumber == 0 ) {
                    isCanBeZero = true
                }
            }
        }
        
        if (isCanBeZero) {
            removeIndexArr = removeIndexArr + tempIndex
        }
    }
    
    for removeIndex: Int in removeIndexArr.reversed() {
        outPutArray.remove(at: removeIndex)
    }
    
    return outPutArray.reversed()
}





