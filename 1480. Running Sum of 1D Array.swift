import Foundation

///   1480. Running Sum of 1D Array
///   Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
///   Return the running sum of nums.

public enum RunningSumOf1DArray {
    public class Solution {
        static func runningSum(_ nums: [Int]) -> [Int] {
            
            var output = [Int]()
            
            for i in nums {
                
                if output.count == 0 {
                    output.append(i)
                } else {
                    output.append(i + output[output.count-1])
                }
                
            }
            
            return output
        }
        
        func runningSum(_ nums: [Int]) -> [Int] {
            var prefix = [nums[0]]
            
            for i in 1..<nums.count {
                prefix.append(nums[i] + prefix[prefix.count - 1])
            }
            
            return prefix
        }
    }
}


