//
//  ValidParentheses.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-12.
//

import Foundation

extension ViewController {
    //22
    func isValid(_ s: String) -> Bool {
        var stack = [Character]() // Using a stack to keep track of open brackets
        
        for char in s {
            switch char {
            case "(", "{", "[":
                stack.append(char) // Push open brackets onto the stack
            case ")":
                if let last = stack.popLast(), last != "(" {
                    return false // Mismatched closing bracket
                }
            case "}":
                if let last = stack.popLast(), last != "{" {
                    return false // Mismatched closing bracket
                }
            case "]":
                if let last = stack.popLast(), last != "[" {
                    return false // Mismatched closing bracket
                }
            default:
                return false // Invalid character in the string
            }
        }
        
        return stack.isEmpty // Check if all open brackets are closed
    }
}

//Time complexity: O(n) - where n is the length of the input string.
//Space complexity: O(n) - in the worst case, the stack can have all the characters from the input string.
