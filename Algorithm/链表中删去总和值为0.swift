//
//  链表中删去总和值为0.swift
//  NodeCal
//
//  Created by pirensen on 2020/3/6.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//func removeZeroSumSublists(_ head: ListNode?) -> ListNode? {
//    var head = head
//    if head == nil {return head}
//    var sums:[Int:ListNode] = [Int:ListNode]()
//    var sum:Int = 0
//    var curr:ListNode? = head
//    while(curr != nil)
//    {
//        sum += curr!.val
//        if sum == 0
//        {
//            head = curr?.next
//        }
//        if sums[sum] != nil
//        {
//            sums[sum]!.next = curr?.next
//        }
//        else
//        {
//            sums[sum] = curr
//        }
//        curr = curr?.next
//    }
//    return head
//}
