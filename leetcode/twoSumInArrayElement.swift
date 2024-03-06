//
//  twoSumInArrayElement.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //3
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Create a dictionary to store the indices of the elements visited so far
        var numIndices = [Int: Int]()
        // Iterate through the array using enumerated() to get both index and value
        for (index, num) in nums.enumerated() {
            // Calculate the complement needed to reach the target
            let complement = target - num
            // Check if the complement is already in the dictionary
            if let complementIndex = numIndices[complement] {
                // Return the indices of the two elements that add up to the target
                return [complementIndex, index]
            }
            // If the complement is not found, store the current element and its index in the dictionary
            numIndices[num] = index
        }
        // In case no solution is found (this should not happen according to the problem statement)
        return []
    }
}

//Time Complexity: O(n)
//The algorithm iterates through the array once, and each lookup and insertion in the dictionary takes constant time. Therefore, the time complexity is linear with respect to the size of the input array.
//Space Complexity: O(n)
//The dictionary numIndices can have at most n entries, where n is the size of the input array. Therefore, the space complexity is linear with respect to the size of the input array.
