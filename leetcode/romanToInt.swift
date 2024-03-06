//
//  romanToInt.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //9
    func romanToInt(_ s: String) -> Int {
        let romanDict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var result = 0
        var prevValue = 0
        for char in s.reversed() {
            if let value = romanDict[char] {
                if value >= prevValue {
                    result += value
                } else {
                    result -= value
                }
                prevValue = value
            }
        }
        return result
    }
}

//Time Complexity: O(n)
//The function iterates through each character of the input string once, where n is the length of the string.
//Space Complexity: O(1)
//The function uses a constant amount of space, regardless of the size of the input string. The space complexity is constant because the dictionary romanDict has a fixed size.
