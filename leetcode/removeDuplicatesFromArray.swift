//
//  removeDuplicatesFromArray.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //14
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }
        var insertIndex = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i - 1] {
                nums[insertIndex] = nums[i]
                insertIndex += 1
            }
        }
        return insertIndex
    }
}

//Time Complexity: O(n) The function iterates through the array once.
//Space Complexity: O(1) The removal of duplicates is done in-place without using additional space.
