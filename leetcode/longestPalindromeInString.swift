//
//  longestPalindromeInString.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //6
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        let sChars = Array(s)
        var maxLen = 0, start = 0
        for i in 0..<sChars.count {
            let centerChar = sChars[i]
            print("Outer Loop - i: \(i), centerChar: \(centerChar)")
            searchPalindrome(sChars, i, i, &start, &maxLen)
            searchPalindrome(sChars, i, i + 1, &start, &maxLen)
        }
        return String(sChars[start..<start + maxLen])
    }
    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
        var l = l, r = r
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            let leftChar = chars[l]
            let rightChar = chars[r]
            print("  Inner Loop - l: \(l), r: \(r), leftChar: \(leftChar), rightChar: \(rightChar)")
            l -= 1
            r += 1
            print("  Inner Loop - l: \(l), r: \(r)")
        }
        if maxLen < r - l - 1 {
            start = l + 1
            maxLen = r - l - 1
            print("  start: \(start)")
            print("  maxLen: \(maxLen)")
        }
    }
}

//Time Complexity: O(n^2)
//The algorithm checks each character as a potential center for the palindrome, and for each center, it expands outward. In the worst case, this results in a quadratic time complexity.
//Space Complexity: O(1)
//The algorithm uses a constant amount of extra space, as the variables (maxLen, start, l, r, etc.) are not dependent on the input size.
