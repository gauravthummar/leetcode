//
//  rotateMatixImage.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-07.
//

import Foundation

extension ViewController {
    //21
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        
        // Transpose the matrix
        for i in 0..<n {
            for j in i+1..<n {
                // Swap matrix[i][j] with matrix[j][i]
                (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
            }
        }
        
        // Reverse each row
        for i in 0..<n {
            matrix[i].reverse()
        }
    }
}

//Time complexity: O(n^2) - where n is the number of rows (or columns) in the matrix.
//Space complexity: O(1) - in-place rotation without using extra space.
