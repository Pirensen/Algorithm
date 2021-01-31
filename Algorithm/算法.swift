//
//  算法.swift
//  TESTDEMO2
//
//  Created by pirensen on 2021/1/10.
//

import Foundation

// 字符串相加 https://leetcode-cn.com/problems/add-strings/
//var stringa = "123456"
//var stringb = "46457908"
//print("\(annString(stringa: &stringa, stringb: &stringb))")
func annString( stringa: inout String ,stringb: inout String) -> String {
    if (stringa.count == 0) {
        return stringb
    }
    if (stringb.count == 0) {
        return stringa
    }
    
    if (stringb.count > stringa.count) {
        while stringa.count < stringb.count {
            stringa = "0\(stringa)"
        }
    }
    if (stringa.count > stringb.count) {
        while stringb.count < stringa.count {
            stringb = "0\(stringb)"
        }
    }
    
    let stringaArr = Array(stringa)
    let stringbArr = Array(stringb)
    let length = stringbArr.count
    
    var restluString = ""
    var isNeedAddone = false
    
    for index in 0..<(length - 1) {
        let bc: String = "\(stringbArr[length - index])"
        let ac: String = "\(stringaArr[length - index])"
        
        let needNum: Int = isNeedAddone ? 1 : 0;
        let number = (Int(bc) ?? 0) + (Int(ac) ?? 0) + needNum
        
        if (number >= 10) {
            isNeedAddone = true
            restluString = "\(number%10)\(restluString)"
        } else {
            isNeedAddone = false
            restluString = "\(number)\(restluString)"
        }
    }
    
    return restluString
}


//外观数列 https://leetcode-cn.com/problems/count-and-say/

