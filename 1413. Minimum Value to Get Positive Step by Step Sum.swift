import Foundation

class Solution {
    /*
     Given an array of integers nums, you start with an initial positive value startValue.

     In each iteration, you calculate the step by step sum of startValue plus elements in nums (from left to right).

     Return the minimum positive value of startValue such that the step by step sum is never less than 1.
     
     Input: nums = [-3,2,-3,4,2]
     Output: 5
     Explanation: If you choose startValue = 4, in the third iteration your step by step sum is less than 1.
     step by step sum
     startValue = 4 | startValue = 5 | nums
       (4 -3 ) = 1  | (5 -3 ) = 2    |  -3
       (1 +2 ) = 3  | (2 +2 ) = 4    |   2
       (3 -3 ) = 0  | (4 -3 ) = 1    |  -3
       (0 +4 ) = 4  | (1 +4 ) = 5    |   4
       (4 +2 ) = 6  | (5 +2 ) = 7    |   2
     */
    func minStartValue(_ nums: [Int]) -> Int {
        var sum = 0
        var startValue = 1
        
        while sum < 1 {
            var prefix = [startValue]
            
            for i in 0..<nums.count {
                sum = nums[i] + prefix[prefix.count - 1]
                if sum >= 1 {
                    prefix.append(sum)
                } else {
                    sum = 0
                    startValue += 1
                    break
                }
            }
        }
                
        return startValue
    }
}
