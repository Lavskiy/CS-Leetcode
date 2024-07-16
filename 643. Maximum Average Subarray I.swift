import Foundation

public enum MaximumAverageSubarrayI {
    /*
     You are given an integer array nums consisting of n elements, and an integer k.

     Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.
     */
    
    public static func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var left = 0
        var right = 0
        var sum: Double = 0
        var result: Double = 0
        
        while right < nums.count {
            sum += Double(nums[right])

            if right - left > k - 1 {
                while right - left > k - 1 {
                    sum -= Double(nums[left])
                    left += 1
                }
            }
            
            if right - left == k - 1 {
                if result == 0 {
                    result = sum / Double(k)
                } else {
                    if result < sum / Double(k) {
                        result = sum / Double(k)
                    }
                }
            }
            
            right += 1
        }
        
        return result
    }
}
