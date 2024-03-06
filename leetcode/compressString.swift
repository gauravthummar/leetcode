//
//  compressString.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-06.
//

import Foundation
extension ViewController {
    //20
    func compress(_ chars: inout [Character]) -> Int {
        // Check if the array is empty or contains only one character
        guard chars.count > 1 else {
            return chars.count
        }
        
        var writeIndex = 0 // Index to write compressed characters
        var readIndex = 0
        
        while readIndex < chars.count {
            let currentChar = chars[readIndex]
            var count = 1
            
            // Count consecutive repeating characters
            while readIndex + 1 < chars.count && chars[readIndex] == chars[readIndex + 1] {
                readIndex += 1
                count += 1
            }
            
            // Write the character to the compressed array
            chars[writeIndex] = currentChar
            writeIndex += 1
            
            // If the count is greater than 1, write the count as characters
            if count > 1 {
                for digitChar in String(count) {
                    chars[writeIndex] = digitChar
                    writeIndex += 1
                }
            }
            readIndex += 1
        }
        
        // Print the compressed array
        print(chars.prefix(writeIndex))
        
        return writeIndex
    }
}


//The time complexity of this algorithm is O(n), where n is the length of the input array chars. The algorithm iterates through the array once, and for each group of consecutive repeating characters, it performs constant-time operations.
//The space complexity is O(1) since the algorithm uses only a constant amount of extra space, regardless of the size of the input array. The compression is done in-place, and the extra variables (writeIndex, readIndex, count, etc.) have constant space requirements.
