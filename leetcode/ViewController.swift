//
//  ViewController.swift
//  leetcode
//
//  Created by Gauravkumar Thummar on 2024-02-16.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("====1====")
        print(findLeastNumOfUniqueInts([5,5,4], 1)) // Output: 1
        print(findLeastNumOfUniqueInts([4,3,1,1,3,3,2], 3)) // Output: 2
        
        print("====2====")
        let l1 = ListNode(2, ListNode(4, ListNode(3)))
        let l2 = ListNode(5, ListNode(6, ListNode(4)))
        let result = addTwoNumbers(l1, l2)
        print(result?.val ?? 0, result?.next?.val ?? 0, result?.next?.next?.val ?? 0)  // Output: 7 0 8
        
        print("====3====")
        let nums1 = [2, 7, 11, 15]
        let target1 = 9
        print(twoSum(nums1, target1)) // Output: [0, 1]
        
        let nums2 = [3, 2, 4]
        let target2 = 6
        print(twoSum(nums2, target2)) // Output: [1, 2]
        
        let nums3 = [3, 3]
        let target3 = 6
        print(twoSum(nums3, target3)) // Output: [0, 1]
        
        print("====4====")
        print(lengthOfLongestSubstring("abcabcbb")) // Output: 3
        print(lengthOfLongestSubstring("bbbbb"))    // Output: 1
        print(lengthOfLongestSubstring("pwwkew"))   // Output: 3
        
        print("====5====")
        print(missingNumber([3, 0, 1]))  // Output: 2
        print(missingNumber([0, 1]))      // Output: 2
        print(missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]))  // Output: 8
        
        print("====6====")
        print(longestPalindrome("babad"))  // Output: "bab" or "aba"
        print(longestPalindrome("cbbd"))    // Output: "bb"
        
        print("====7====")
        let n = 5
        let array = [1, 1, 0, 0, 1]
        let ans = getMinimumMovement(n, floors: array)
        print(ans) // output : 4
        
        print("====8====")
        print(isPalindrome(121)) // output : true
        print(isPalindrome(-121)) // output : false
        print(isPalindrome(10)) // output : false
        
        print("====9====")
        print(romanToInt("III"))    // Output: 3
        print(romanToInt("LVIII"))  // Output: 58
        print(romanToInt("MCMXCIV")) // Output: 1994
        
        print("====10====")
        print(reverse(123)) // Output: 321
        print(reverse(-123)) // Output: -321
        print(reverse(120)) // Output: 21
        print(reverse(1534236469)) // Output: 0
        
        print("====11====")
        print(myAtoi("42")) // output : 42
        print(myAtoi("  -42")) // output : -42
        print(myAtoi("4193 with words")) // output : 4193
        
        print("====12====")
        print(maxArea([1,8,6,2,5,4,8,3,7])) // Expected output: 49
        print(maxArea([1,1])) // Expected output: 1
        
        print("====13====")
        print(longestCommonPrefix(["flower", "flow", "flight"])) // Expected output: "fl"
        print(longestCommonPrefix(["dog", "racecar", "car"])) // Expected output: ""
        
        print("====14====")
        var numbers1 = [1, 1, 2]
        print(removeDuplicates(&numbers1))  // output : 2
        var numbers2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        print(removeDuplicates(&numbers2)) // output : 5
        
        print("====15====")
        let list1 = ListNode(1, ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        let mergedList = mergeTwoLists(list1, list2)
        var current: ListNode? = mergedList
        while current != nil {
            print(current!.val)
            current = current?.next
        }
        
        print("====16====")
        var numsArray1 = [3, 2, 2, 3]
        let val1 = 3
        let k1 = removeElement(&numsArray1, val1)
        print("Output 1: \(k1), nums1 = \(numsArray1[0..<k1])")

        var numsArray2 = [0, 1, 2, 2, 3, 0, 4, 2]
        let val2 = 2
        let k2 = removeElement(&numsArray2, val2)
        print("Output 2: \(k2), nums2 = \(numsArray2[0..<k2])")
        
        print("====17====")
        let haystack1 = "sadbutsad", needle1 = "sad"
        let result1 = strStr(haystack1, needle1)
        print(result1)  // Output: 0

        let haystack2 = "leetcode", needle2 = "leeto"
        let result2 = strStr(haystack2, needle2)
        print(result2)  // Output: -1
        
        let haystack3 = "a", needle3 = "a"
        let result3 = strStr(haystack3, needle3)
        print(result3)  // Output: 0
        
        let haystack4 = "aaa", needle4 = "aaaa"
        let result4 = strStr(haystack4, needle4)
        print(result4)  // Output: -1
        
        let haystack5 = "abb", needle5 = "abaaa"
        let result5 = strStr(haystack5, needle5)
        print(result5)  // Output: -1
        
        print("====18====")
        let example1 = convert("PAYPALISHIRING", 3)
        print(example1) // Output: "PAHNAPLSIIGYIR"

        let example2 = convert("PAYPALISHIRING", 4)
        print(example2) // Output: "PINALSIGYAHRPI"

        let example3 = convert("A", 1)
        print(example3) // Output: "A"
        
        print("====19====")
        let numsArr1 = [1,3,5,6]
        let target_1 = 5
        print(searchInsert(numsArr1, target_1))
        
        let numsArr2 = [1,3,5,6]
        let target_2 = 2
        print(searchInsert(numsArr2, target_2))
        
        let numsArr3 = [1,3,5,6]
        let target_3 = 7
        print(searchInsert(numsArr3, target_3))
        
        print("====20====")
        var chars1: [Character] = ["a","a","b","b","c","c","c"]
        let length1 = compress(&chars1)
        print("Output 1:", length1, chars1)

        var chars2: [Character] = ["a"]
        let length2 = compress(&chars2)
        print("Output 2:", length2, chars2)

        var chars3: [Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
        let length3 = compress(&chars3)
        print("Output 3:", length3, chars3)
        
        var chars4: [Character] = ["a","b","c"]
        let length4 = compress(&chars4)
        print("Output 4:", length4, chars4)
        
        print("====21====")
        var matrix1 = [[1,2,3],[4,5,6],[7,8,9]]
        rotate(&matrix1)
        print(matrix1)

        var matrix2 = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
        rotate(&matrix2)
        print(matrix2)
    }
}


