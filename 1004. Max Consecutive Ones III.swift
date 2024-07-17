import Foundation

public enum MaxConsecutiveOnesIII {
    /*
     Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
     
     Example 1:

     Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
     Output: 6
     Explanation: [1,1,1,0,0,1,1,1,1,1,1]
     Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
     Example 2:

     Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
     Output: 10
     Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
     Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
     
     */
    
    public static func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var kMutable = k
        var right = 0
        var left = 0
        
        while right < nums.count {
            if nums[right] == .zero {
                kMutable -= 1
            }
            
            if kMutable < 0 {
                kMutable += 1 - nums[left]
                left += 1
            }
            
            right += 1
        }
        
        return right - left
    }
    
    func naiveLongestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var right = 0
        var flip = 0
        var result = 0
        var longest = 0
        
        while right < nums.count {
            if nums[right] == 1 {
                result += 1
                right += 1
            } else {
                if flip < k {
                    flip += 1
                    result += 1
                    right += 1
                } else {
                    if result > longest {
                        longest = result
                    }
                    left += 1
                    result = 0
                    flip = 0
                    right = left
                }
            }
            if result > longest {
                longest = result
            }
        }
        
        return longest
    }
}
