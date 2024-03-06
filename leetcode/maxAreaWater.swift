//
//  maxAreaWater.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //12
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var left = 0
        var right = height.count - 1
        while left < right {
            let h = min(height[left], height[right])
            let w = right - left
            let area = h * w
            maxArea = max(maxArea, area)
            // Move the pointers based on which side has a shorter line
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
    }
}

//Time Complexity: O(n) - The algorithm iterates through the array once.
//Space Complexity: O(1) - The algorithm uses a constant amount of space, regardless of the input size.
