//
//  longestCommonPrefixInStringArray.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //13
    func longestCommonPrefix(_ strs: [String]) -> String {
       guard strs.count > 0 else {
           return ""
       }
       let sortedStrings = strs.sorted()
       let firstString = sortedStrings.first!
       let lastString = sortedStrings.last!
       for (index, char) in firstString.enumerated() {
           if char != lastString[lastString.index(lastString.startIndex, offsetBy: index)] {
               return String(firstString.prefix(index))
           }
       }
       return firstString
   }
}

//Time Complexity: O(m * n * log(n)), where m is the length of the longest string and n is the number of strings. Sorting takes O(n * log(n)) time, and comparing characters takes O(m) time in the worst case.
//
//Space Complexity: O(1) - The algorithm uses a constant amount of space, regardless of the input size.
