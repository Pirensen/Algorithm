//
//  排序.swift
//  Algorithm
//
//  Created by rensenpi on 2022/2/25.
//  Copyright © 2022 pirensen. All rights reserved.
//

import Foundation


//func quickOrder(_ inputArr:[Int]) -> [Int] {
//    if (inputArr.count <= 1) {
//        return inputArr
//    }
//
//    let archNum = inputArr[0]
//    var leftArr = [Int]()
//    var rightArr = [Int]()
//
//    for index in 1...(inputArr.count - 1) {
//        let num = inputArr[index]
//        if num > archNum {
//            rightArr.append(num)
//        } else {
//            leftArr.append(num)
//        }
//    }
//
//    var result = quickOrder(leftArr)
//    result.append(archNum)
//    result.append(contentsOf: quickOrder(rightArr))
//
//    return result
//}


//var inputarr = [12, 10, 11]
//quickSort(data: &inputarr, low: 0, high: 2)
//print(inputarr)

func partition( data:inout [Int],low:Int,high:Int) -> Int {
    
    let root = data[high]
    var index = low
    for i in low...high {
        if data[i] < root {
            if i != index {
                data.swapAt(i, index)
            }
            index = index+1
        }
    }
    
    if high != index {
        data.swapAt(high, index)
    }
    return index
}

func quickSort(data:inout [Int],low:Int,high:Int) -> Void {
    if low > high {
        return
    }
    let sortIndex = partition(data: &data, low: low, high: high)
    quickSort(data: &data, low: low, high: sortIndex-1)
    quickSort(data: &data, low: sortIndex+1, high: high)
}
