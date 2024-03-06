//
//  myAtoi.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //11
    func myAtoi(_ s: String) -> Int {
        guard !s.contains("+ ") else { return 0 }
        var result = (s as NSString).integerValue
        let int32Max = Int(Int32.max)
        let int32Min = Int(Int32.min)

        // Check for overflow and clamp the result
        if result >= int32Max {
            result = int32Max
        } else if result < int32Min {
            result = int32Min
        }

        return result
    }
}


//Time Complexity: O(n)
//The function iterates through each character in the string s. The number of iterations is proportional to the length of the string.
//Space Complexity: O(1)
//The function uses a constant amount of space, regardless of the size of the input string. The space used is for variables like result, int32Max, int32Min, etc.



