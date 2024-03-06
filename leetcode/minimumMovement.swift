//
//  minimumMovement.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //7
    func getMinimumMovement(_ n: Int, floors: [Int]) -> Int {
        var ans = 0
        var currentPosition = 0
        
        for floor in floors {
            if floor == 1 {
                ans += max(currentPosition, 1)
                currentPosition = 0
            } else {
                currentPosition += 1
            }
        }
        return ans
    }
}



//Time Complexity: O(n)
//The function iterates through each floor in the floors array exactly once. The time complexity is linearly proportional to the number of floors (n).
//Space Complexity: O(1)
//The space complexity is constant because the algorithm uses a fixed amount of extra space regardless of the input size. The variables ans and currentPosition do not depend on the size of the floors array.



