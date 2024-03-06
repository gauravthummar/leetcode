//
//  missingNumberInArray.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //5
    func missingNumber(_ nums: [Int]) -> Int {
        var missing = nums.count
        for (index, num) in nums.enumerated() {
            missing ^= index ^ num
        }
        return missing
    }
}

//Time Complexity: O(n)
//The algorithm iterates through the array once, performing constant-time operations for each element. Therefore, the time complexity is linear with respect to the length of the array.
//Space Complexity: O(1)
//The algorithm uses a constant amount of extra space, as the variables (missing, index, num) are not dependent on the input size.
