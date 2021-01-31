//
//  位运算.swift
//  TESTDEMO2
//
//  Created by pirensen on 2021/1/10.
//

import Foundation

//XOR 两个输入相同时为0，不同则为1
//var numbera = 1
//var numberb = 2
//exchageTwoNum(&numbera,&numberb)
func exchageTwoNum(_ numbera: inout Int, _ numberb: inout Int) {
    print("\(numbera) \(numberb)")
//    numbera : 01
//    numberb : 10
    
    numbera = numbera ^ numberb
    //numbera : 11
    //numberb : 10
    
    numberb = numbera ^ numberb
    //numbera : 11
    //numberb : 01
    
    numbera = numbera ^ numberb
    //numbera : 10
    //numberb : 01
    
    print("\(numbera) \(numberb)")
}

// >> << 正数的符号位为0，负数的符号位为1
//负数是用补码表示的，移位的话，应该是视作unsigned处理的
//负数最好不要用移位操作
func readSym() {
    let number: Int = 5 //101
    print("\(number >> 1)") //10
    print("\(number >> 2)") //1
    print("\(number >> 3)") //0
    print("\(number >> 4)") //0
    
    print("\(number << 1)") //1010
    print("\(number << 2)") //10100
    print("\(number << 3)") //101000
    
//    1、先取1的原码：00000000 00000000 00000000 00000101
//    2、得反码：     11111111 11111111 11111111 11111010
//    3、得补码 + 1： 11111111 11111111 11111111 11111011
    let denumber: Int = -5 //-101
    print("\(denumber >> 1)") //10
    print("\(denumber >> 2)") //1
    print("\(denumber >> 3)") //0
    print("\(denumber >> 4)") //0
    
    print("\(denumber << 1)") //1010
    print("\(denumber << 2)") //10100
    print("\(denumber << 3)") //101000
}

