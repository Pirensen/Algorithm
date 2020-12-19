//
//  BaseData.swift
//  Algorithm
//
//  Created by pirensen on 2020/12/19.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//双向链表
class BidirectLinkedNode {
    let key: Int
    var value: Int
    var pre: BidirectLinkedNode?
    var next: BidirectLinkedNode?
    
    init(_ key: Int,_ value: Int) {
        self.key = key
        self.value = value
    }
}

//普通链表
class LinkedNode {
    let key: Int
    var value: Int
    
    init(_ key: Int,_ value: Int) {
        self.key = key
        self.value = value
    }
}

