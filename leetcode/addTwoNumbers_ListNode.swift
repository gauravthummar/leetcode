//
//  addTwoNumbers_ListNode.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //2
    class ListNode {
        var val: Int
        var next: ListNode?
        init(_ val: Int, _ next: ListNode? = nil) {
            self.val = val
            self.next = next
        }
    }
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummyHead = ListNode(0)
        var current: ListNode? = dummyHead
        var carry = 0
        var l1 = l1
        var l2 = l2
        while l1 != nil || l2 != nil || carry != 0 {
            let val1 = l1?.val ?? 0
            let val2 = l2?.val ?? 0
            let total = val1 + val2 + carry
            carry = total / 10
            current?.next = ListNode(total % 10)
            current = current?.next
            l1 = l1?.next
            l2 = l2?.next
        }
        return dummyHead.next
    }
}

//Time Complexity: O(max(n, m))
//- The algorithm iterates through the longer of the two linked lists (where n and m are the lengths of l1 and l2, respectively). The length of the resulting linked list is also proportional to the maximum of n and m.
//Space Complexity: O(max(n, m))
//- The algorithm uses additional space to store the resulting linked list. The length of the resulting linked list is proportional to the maximum of n and m. Therefore, the space complexity is also proportional to max(n, m).
