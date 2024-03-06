//
//  ZigzagConversion.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-06.
//

import Foundation

extension ViewController {
    //18
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 || numRows >= s.count {
            return s
        }
        
        var result = Array(repeating: "", count: min(numRows, s.count))
        var currentRow = 0
        var goingDown = false
        
        for char in s {
            result[currentRow].append(char)
            if currentRow == 0 || currentRow == numRows - 1 {
                goingDown.toggle()
            }
            currentRow += goingDown ? 1 : -1
        }
        return result.joined()
    }
}


//Time complexity: O(n), where n is the length of the input string.
//Space complexity: O(min(numRows, n)), as we are using an array to store each row.
