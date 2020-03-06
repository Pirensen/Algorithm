//
//  交换两个数.swift
//  Algorithm
//
//  Created by pirensen on 2020/3/5.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//func changeV() {
//    var a = 12
//    var b = 20
//
//    a = a + b
//    b = a - b
//    a = a - b
//
//    print("a === \(a) \nb === \(b)")
//}

func changeV() {
    var a = 12
    var b = 20
    
    a = a ^ b
    b = a ^ b
    a = a ^ b
    
    print("a === \(a) \nb === \(b)")
}
