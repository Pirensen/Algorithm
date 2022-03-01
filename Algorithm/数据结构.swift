//
//  算法学习.swift
//  TESTDEMO2
//
//  Created by pirensen on 2020/11/18.
//

import Foundation

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
