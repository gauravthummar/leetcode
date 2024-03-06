//
//  IndexOfFirstOccurrenceInString.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-05.
//

import Foundation

extension ViewController {
    //17
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count >= needle.count else { return -1 }
        let haystackChars = Array(haystack)
        let needleChars = Array(needle)
        let haystackCount = haystackChars.count
        let needleCount = needleChars.count
        for i in 0...(haystackCount - needleCount)  {
            var count = 0
            
            for j in 0..<needleCount {
                if haystackChars[i + j] != needleChars[j] { break }
                count += 1
            }
            if count == needleCount {
                return i
            }
        }
        return -1
    }
}
