//
//  reverseTheNumber.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //10
    func reverse(_ x: Int) -> Int {
        var result = 0
        var num = x
        
        while num != 0 {
            let digit = num % 10
            num /= 10
            if result > Int32.max / 10 || (result == Int32.max / 10 && digit > 7) {
                return 0
            }
            if result < Int32.min / 10 || (result == Int32.min / 10 && digit < -8) {
                return 0
            }
            result = result * 10 + digit
        }
        return result
    }
}

//Time Complexity: O(log(x))
//The number of iterations in the while loop is proportional to the number of digits in the input integer x.
//Space Complexity: O(1)
//The function uses a constant amount of space, regardless of the size of the input integer.



