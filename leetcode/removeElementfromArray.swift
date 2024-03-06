//
//  removeElementfromArray.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-05.
//

import Foundation

extension ViewController {
    //16
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0  // Initialize the variable to count non-equal elements
        
        for num in nums {
            if num != val {
                nums[k] = num
                k += 1
            }
        }
        
        return k
    }
}

//Time Complexity: O(n) - The function iterates through the array once.
//Space Complexity: O(1) - The function uses a constant amount of space.
