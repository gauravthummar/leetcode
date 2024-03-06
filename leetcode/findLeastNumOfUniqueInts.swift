//
//  findLeastNumOfUniqueInts.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-03-01.
//

import Foundation

extension ViewController {
    //1
    func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
        var frequencyDict = [Int: Int]()
        // Step 1: Create a frequency dictionary
        for num in arr {
            frequencyDict[num, default: 0] += 1
        }
        // Step 2: Sort the values of the frequency dictionary in ascending order
        let sortedValues = frequencyDict.values.sorted()
        var uniqueIntegers = frequencyDict.count
        var remainingRemovals = k
        // Step 3: Iterate through the sorted values and subtract from k
        for count in sortedValues {
            if remainingRemovals >= count {
                remainingRemovals -= count
                uniqueIntegers -= 1
            } else {
                break
            }
        }
        // Step 4: The remaining unique integers are the least number of unique integers after removing k elements
        return uniqueIntegers
    }
}

//Time Complexity: O(n log n)
//The algorithm involves creating a frequency dictionary and sorting its values. The sorting step dominates the time complexity, resulting in O(n log n), where n is the length of the input array.
//Space Complexity: O(n)
//The algorithm uses additional space to store the frequency dictionary, where the space complexity is proportional to the number of unique elements in the input array. In the worst case, all elements are unique, resulting in a space complexity of O(n).
