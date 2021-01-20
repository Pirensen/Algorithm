//
//  Booking-encode.swift
//  Algorithm
//
//  Created by pirensen on 2020/12/28.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation


func deltaEncoding(input: [Int]) -> [Int] {
    var output: [Int] = []
    for (index, element) in input.enumerated() {
        if index == 0 {
            output.append(element)
            continue
        }
        let diff: Int = element - input[index - 1]
        if abs(diff) > 127 {
            output.append(-128)
        }
        output.append(diff)
    }
    
    return output
}
