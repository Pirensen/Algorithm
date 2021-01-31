//
//  Node.swift
//  TESTDEMO2
//
//  Created by pirensen on 2020/11/18.
//

import Foundation

class ListNode: NSObject {
    var value: Int = 0
    var next: ListNode?
}

class MulDirListNode: NSObject {
    var key: Int = 0
    var value: Int = 0
    var next: MulDirListNode?
    var prev: MulDirListNode?
}

func genNodeChain(_ values:[Int]) -> ListNode? {
    if (values.count == 0) {
        return nil
    }
    
    let head: ListNode = ListNode()
    var lastNode: ListNode?
    for (index,value) in values.enumerated() {
        if (index == 0) {
            head.value = value
            lastNode = head
        } else {
            let nextNode = ListNode()
            nextNode.value = value
            lastNode?.next = nextNode
            lastNode = nextNode
        }
    }

    return head
}

func lookNode(_ head: ListNode?) {
    if (head == nil) {
        return
    }
    print("====begin====")
    var lastNode: ListNode = head ?? ListNode()
    while (lastNode.next != nil) {
        print("\(lastNode.value) -->")
        lastNode = lastNode.next ?? ListNode()
    }
    print("\(lastNode.value) -->")
    print("=====end=====")
}
