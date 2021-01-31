//
//  算法学习.swift
//  TESTDEMO2
//
//  Created by pirensen on 2020/11/18.
//

import Foundation

func 反转链表(_ head: ListNode) -> ListNode {
    if (head.next == nil) {
        return head
    }

    var cur: ListNode? = head
    var preVew: ListNode? = nil

    while (cur != nil) {
        let temp = cur?.next
        cur?.next = preVew
        preVew = cur
        cur = temp
    }

    return preVew!
}

//反转链表
func ReverseList ( _ head: ListNode?) -> ListNode? {
    var pre: ListNode?
    var realHead = head
    while realHead?.next != nil {
        let temp = realHead?.next
        realHead?.next = pre
        pre = realHead
        realHead = temp
    }
    
    realHead?.next = pre
    
    return realHead
}

//删除排序链表中的重复元素 https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    let headValue:Int = head?.value ?? 0
    var valArr:[Int] = [headValue]
    var cur = head
    let result = head
    while ((cur?.next) != nil) {
        if (valArr.contains(cur?.next?.value ?? 0)) {
            cur?.next = cur?.next?.next
            cur = cur?.next?.next
        } else {
            valArr.append(cur?.next?.value ?? 0)
            cur = cur?.next
        }
    }

    return result
}

//删除单节点
func deleteSpicValue(_ head: ListNode?) -> ListNode? {
    var cur = head
    let tempHead = head
    while ((cur?.next) != nil) {
        if (cur?.next?.value == 3) {
            cur?.next = cur?.next?.next
        }
        cur = cur?.next
    }
    
    return tempHead;
}
