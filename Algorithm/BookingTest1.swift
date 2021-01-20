//
//  BookingTest1.swift
//  Algorithm
//
//  Created by pirensen on 2020/3/2.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//case :
// calculate(array: [25626,25757, 24367,24267,16,100,2,7277])

func calculate(array: Array<Int>) {
    var copyArr: Array<Int> = []
    var formerNumber: Int = 0;
    for (index, currentNumber) in array.enumerated() {
        if (abs(currentNumber - formerNumber) > 127) && index != 0 {
            copyArr.append(-128)
        }
        copyArr.append(currentNumber - formerNumber)
        formerNumber = currentNumber;
    }
    
    print(copyArr)
}

extension Array where Element == Int {
    
    /// Returns a delta encoded version of the array
    public func deltaEncoded() -> [Element] {
        var copyArr: Array<Int> = []
        var formerNumber: Int = 0
        for currentNumber: Int in self {
            if abs(currentNumber - formerNumber) > 127 {
                copyArr.append(-128)
            }
            copyArr.append(currentNumber - formerNumber)
            formerNumber = currentNumber
        }
        
        return copyArr
    }
}


