//
//  两个栈实现对列.swift
//  Algorithm
//
//  Created by rensenpi on 2022/3/24.
//  Copyright © 2022 pirensen. All rights reserved.
//

import Foundation

class FakeQueue: NSObject {
    var orderStack:[Int] = [Int]()
    var reverseStack:[Int] = [Int]()
    
    func readTop() -> Int {
        if (orderStack.count > 0) {
            return orderStack[0]
        }
        
        return reverseStack[reverseStack.endIndex]
    }
    
    func pop(_ v: Int) {
//        if (orderStack.count > 0) {
//            return orderStack[0]
//        }
//        
//        return reverseStack[reverseStack.endIndex]
    }
    
    func push(_ v: Int) {
        
    }
}

