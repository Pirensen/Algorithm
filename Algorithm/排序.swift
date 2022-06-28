//
//  排序.swift
//  Algorithm
//
//  Created by rensenpi on 2022/2/25.
//  Copyright © 2022 pirensen. All rights reserved.
//

import Foundation


func quickOrder(_ inputArr:[Int]) -> [Int] {
    if inputArr.count <= 1 {
        return inputArr
    }
    
    var tempArr:[Int] = [Int]()
    var leftArr:[Int] = [Int]()
    var rightArr:[Int] = [Int]()
    let archnum = inputArr[0]
    for index in 1..<inputArr.count {
        let indexNumber = inputArr[index]
        if (indexNumber > archnum) {
            rightArr.append(indexNumber);
        } else {
            leftArr.append(indexNumber);
        }
    }
    tempArr.append(contentsOf: quickOrder(leftArr))
    tempArr.append(archnum)
    tempArr.append(contentsOf: quickOrder(rightArr))
    
    return tempArr
}


//var inputarr = [12, 10, 11]
//quickSort(data: &inputarr, low: 0, high: 2)
//print(inputarr)

//func partition( data:inout [Int],low:Int,high:Int) -> Int {
//
//    let root = data[high]
//    var index = low
//    for i in low...high {
//        if data[i] < root {
//            if i != index {
//                data.swapAt(i, index)
//            }
//            index = index+1
//        }
//    }
//
//    if high != index {
//        data.swapAt(high, index)
//    }
//    return index
//}
//
//func quickSort(data:inout [Int],low:Int,high:Int) -> Void {
//    if low > high {
//        return
//    }
//    let sortIndex = partition(data: &data, low: low, high: high)
//    quickSort(data: &data, low: low, high: sortIndex-1)
//    quickSort(data: &data, low: sortIndex+1, high: high)
//}
