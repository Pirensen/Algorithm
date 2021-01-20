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
    var value: Int = 0
    var next: LinkedNode?
    
    static func genNodeChain(_ values:[Int]) -> LinkedNode? {
        if (values.count == 0) {
            return nil
        }
        
        var head: LinkedNode?
        var lastNode: LinkedNode?
        for (index,value) in values.enumerated() {
            if (index == 0) {
                head = LinkedNode()
                head?.value = value
                lastNode = head
            } else {
                let nextNode = LinkedNode()
                nextNode.value = value
                lastNode?.next = nextNode
                lastNode = nextNode
            }
        }

        return head
    }
    
    static func lookNode(_ head: LinkedNode?) {
        if (head == nil) {
            return
        }
        print("====begin====")
        var lastNode: LinkedNode = head ?? LinkedNode()
        while (lastNode.next != nil) {
            print("\(lastNode.value) -->")
            lastNode = lastNode.next ?? LinkedNode()
        }
        print("\(lastNode.value) -->")
        print("=====end=====")
    }
}

