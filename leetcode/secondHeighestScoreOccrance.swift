//
//  secondHeighestScoreOccrance.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-09-18.
//

import Foundation

func secondHeighestScoreOccrance(scores: [Int]) {
    let uniqueScore = Set(scores)
    let sortedScore = uniqueScore.sorted(by: >)
    
    guard sortedScore.count >= 2 else {
        return
    }
    
    let secondHegiestScore = sortedScore[1]
    
    let count = scores.filter{ $0 == secondHegiestScore }.count
    
    print( "\(count) students have scored second highest: \(secondHegiestScore)")
}
