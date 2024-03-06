//
//  lengthOfLongestSubstring.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //4
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charIndexMap = [Character: Int]() // Store the index of each character in the window
        var maxLength = 0
        var left = 0 // Left pointer of the sliding window
        for (right, char) in s.enumerated() {
            // If the character is already in the window, update the left pointer
            if let existingIndex = charIndexMap[char], existingIndex >= left {
                left = existingIndex + 1
            }
            // Update the index of the character in the window
            charIndexMap[char] = right
            // Update the maximum length of the substring
            maxLength = max(maxLength, right - left + 1)
        }
        return maxLength
    }
}


//Time Complexity: O(n)
//The algorithm iterates through the string once, performing constant-time operations for each character. Therefore, the time complexity is linear with respect to the length of the string.
//Space Complexity: O(min(m, n)), where m is the size of the character set
//The algorithm uses extra space for the charIndexMap. In the worst case, when all characters in the string are distinct, the space complexity is O(n). In the best case, when the character set size is fixed, the space complexity is O(1).
