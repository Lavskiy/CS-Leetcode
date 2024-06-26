import Foundation

public enum TwoSum {
    /*
     Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

     You may assume that each input would have exactly one solution, and you may not use the same element twice.

     You can return the answer in any order.

     Example 1:

     Input: nums = [2,7,11,15], target = 9
     Output: [0,1]
     Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
     Example 2:

     Input: nums = [3,2,4], target = 6
     Output: [1,2]
     Example 3:

     Input: nums = [3,3], target = 6
     Output: [0,1]
      

     Constraints:

     2 <= nums.length <= 104
     -109 <= nums[i] <= 109
     -109 <= target <= 109
     */
    
    public static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        var result: [Int] = []
        
        nums.enumerated().forEach {
            if let exist = dict[(target - $0.element)] {
                result.append($0.offset)
                result.append(exist)
            } else {
                dict[$0.element] = $0.offset
            }
        }
        
        if result.count == 2 {
            return result
        } else {
            dict.forEach {
                let key = target - $0.key
                if let res = dict[key], result.isEmpty {
                    result.append(res)
                    result.append($0.value)
                }
            }
            return result
        }
    }
    
    public static func twoSumRefactored(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int: Int] = [:]
        
        return nums.enumerated().reduce(into: []) {
            if let hashValue = hash[target - $1.element] {
                $0.append(hashValue)
                $0.append($1.offset)
            } else {
                hash[$1.element] = $1.offset
            }
        }
    }
    
}
