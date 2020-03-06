//
//  公倍数公约数.swift
//  Algorithm
//
//  Created by pirensen on 2020/3/5.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//最大公约数,遍历
//func maxCommonDivisor(numb1: Int, numb2: Int) -> Int {
//    var max: Int = 0;
//    for index: Int in 1...numb2 {
//        if (numb1 % index == 0 && numb2 % index == 0) {
//            max = index
//        }
//    }
//
//    return max;
//}

//递归
func maxCommonDivisor(numb1: Int, numb2: Int) -> Int {
    var max: Int = 0;
    var numbOne: Int = numb1;
    var numbTwo: Int = numb2;
    
    while(numbOne % numbTwo > 0) {
        print("number one == \(numbOne) number two == \(numbTwo) max == \(max)")
        
        max = numbOne % numbTwo;
//        numbOne = numbTwo;
        numbTwo = max;
        print("number one == \(numbOne) number two == \(numbTwo) max == \(max)")
        
    }
    return numbTwo;
}

//最小公倍数 = (a * b)/最大公约数
