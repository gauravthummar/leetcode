//
//  searchInsertIndexInAaray.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-06.
//

import Foundation
extension ViewController {
    //19
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                // Target found at index mid
                print("Target found at index: \(mid)")
                return mid
            } else if nums[mid] < target {
                // Adjust left pointer to search in the right half
                left = mid + 1
            } else {
                // Adjust right pointer to search in the left half
                right = mid - 1
            }
        }
        // If the loop exits, left represents the correct insertion index
        print("Target not found. Insert at index: \(left)")
        return left
    }
}

//Time complexity of this binary search algorithm is O(log n)
//Space complexity is O(1) as we use constant space.
