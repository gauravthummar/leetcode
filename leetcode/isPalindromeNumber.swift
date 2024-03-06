//
//  isPalindromeNumber.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //8
    func isPalindrome(_ x: Int) -> Bool {
        // Handle negative numbers and numbers ending with 0
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        
        var reversed = 0
        var original = x
        
        //        // Reverse half of the number
        //        while original > reversed {
        //            let digit = original % 10
        //            reversed = reversed * 10 + digit
        //            original = original / 10
        //        }
        //
        //        // Handle odd-length palindromes by dividing reversed by 10
        //        return original == reversed || original == reversed / 10
        while original != 0 {
            reversed = reversed * 10
            reversed = reversed + original % 10
            original /= 10
        }
        return x == reversed
    }
}

//Time Complexity: O(log(x))
//The number of digits in the integer x determines the number of iterations in the while loop. For a number with d digits, it takes approximately log10(x) iterations to reverse the digits.
//Space Complexity: O(1)
//The space complexity is constant because the algorithm uses a constant amount of extra space to store variables (reversed and original). The space required does not grow with the input size.
