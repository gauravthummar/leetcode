//
//  mergeTwoLists.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    /**
      Definition for singly-linked list.
      public class ListNode {
          public var val: Int
          public var next: ListNode?
          public init() { self.val = 0; self.next = nil; }
          public init(_ val: Int) { self.val = val; self.next = nil; }
          public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
      }
    */
    //15
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // Create a dummy node to simplify the code
        let dummy = ListNode(0)
        // Initialize a current node to keep track of the merged list
        var current: ListNode? = dummy
        var l1 = list1
        var l2 = list2
        
        // Iterate until both lists are exhausted
        while l1 != nil && l2 != nil {
            // Compare values of the current nodes in both lists
            if l1!.val < l2!.val {
                // If the value in list1 is smaller, append it to the merged list
                current?.next = l1
                l1 = l1?.next
            } else {
                // If the value in list2 is smaller or equal, append it to the merged list
                current?.next = l2
                l2 = l2?.next
            }
            // Move the current pointer to the newly added node
            current = current?.next
        }
        
        // Append the remaining nodes from the non-empty list, if any
        current?.next = l1 ?? l2
        
        // Return the merged list starting from the dummy node's next
        return dummy.next
    }
}

//Time Complexity: O(m + n), where m and n are the lengths of list1 and list2.
//Space Complexity: O(1), as the function uses a constant amount of extra space.
