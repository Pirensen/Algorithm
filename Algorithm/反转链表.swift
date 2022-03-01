//
//  反转链表.swift
//  Algorithm
//
//  Created by rensenpi on 2022/1/11.
//  Copyright © 2022 pirensen. All rights reserved.
//

import Foundation

//lookNode(reverseChainList(genNodeChain([1, 2, 3, 4, 5, 6, 7])!))
func reverseChainList( _ head: ListNode?) -> ListNode? {
    var preNode: ListNode?
    var postNode: ListNode? = head

    while ((postNode?.next) != nil) {
        let tempNode: ListNode? = postNode?.next
        postNode?.next = preNode
        preNode = postNode
        postNode = tempNode
    }

    postNode?.next = preNode

    return postNode
}

//func reverseChainList(_ head: ListNode) -> ListNode {
//    if (head.next == nil) {
//        return head
//    }
//
//    var cur: ListNode? = head
//    var preVew: ListNode? = nil
//
//    while (cur != nil) {
//        let temp = cur?.next
//        cur?.next = preVew
//        preVew = cur
//        cur = temp
//    }
//
//    return preVew!
//}





