import Foundation

public enum FindIndicesWithIndexAndValueDifference {
    /*
     You are given a 0-indexed integer array nums having length n, an integer indexDifference, and an integer valueDifference.

     Your task is to find two indices i and j, both in the range [0, n - 1], that satisfy the following conditions:

     abs(i - j) >= indexDifference, and
     abs(nums[i] - nums[j]) >= valueDifference
     Return an integer array answer, where answer = [i, j] if there are two such indices, and answer = [-1, -1] otherwise. If there are multiple choices for the two indices, return any of them.

     Note: i and j may be equal.

      

     Example 1:

     Input: nums = [5,1,4,1], indexDifference = 2, valueDifference = 4
     Output: [0,3]
     Explanation: In this example, i = 0 and j = 3 can be selected.
     abs(0 - 3) >= 2 and abs(nums[0] - nums[3]) >= 4.
     Hence, a valid answer is [0,3].
     [3,0] is also a valid answer.
     Example 2:

     Input: nums = [2,1], indexDifference = 0, valueDifference = 0
     Output: [0,0]
     Explanation: In this example, i = 0 and j = 0 can be selected.
     abs(0 - 0) >= 0 and abs(nums[0] - nums[0]) >= 0.
     Hence, a valid answer is [0,0].
     Other valid answers are [0,1], [1,0], and [1,1].
     Example 3:

     Input: nums = [1,2,3], indexDifference = 2, valueDifference = 4
     Output: [-1,-1]
     Explanation: In this example, it can be shown that it is impossible to find two indices that satisfy both conditions.
     Hence, [-1,-1] is returned.
     */
    
    //let nums = [5,1,4,1], indexDifference = 2, valueDifference = 4
    // output = [0, 3]

    //let nums = [0], indexDifference = 0, valueDifference = 0

    //let nums = [7,36,21], indexDifference = 1, valueDifference = 20

    //let nums = [5,0,3], indexDifference = 1, valueDifference = 4

    //let nums = [7,2,1,8,3], indexDifference = 0, valueDifference = 7
    // [2,3]

    //let nums = [5,50,13,3,44,7,29], indexDifference = 1, valueDifference = 45

    //let nums = [2,8,0], indexDifference = 2, valueDifference = 7
    //output = [-1, -1]

    //let nums = [4], indexDifference = 1, valueDifference = 0
    //output = [-1, -1]

    //let nums = [2,29,0], indexDifference = 0, valueDifference = 12
    //output [0,1]

    //let nums = [8], indexDifference = 0, valueDifference = 2
    //output = [-1, -1]

    //let nums = [9,4,7], indexDifference = 0, valueDifference = 9
    //output = [-1, -1]

    //let nums = [3], indexDifference = 1, valueDifference = 1
    //output = [-1, -1]

    //let nums = [3,8,9,7,2,3], indexDifference = 3, valueDifference = 6
    //output = [1, 4]

    //let nums = [17,49,1,47,12], indexDifference = 2, valueDifference = 17
    //output = [0,3]

    //let nums = [23,31,14,42,0,49], indexDifference = 4, valueDifference = 44
    //output = [0,3]
    
    public static func findIndices(
        _ nums: [Int],
        _ indexDifference: Int,
        _ valueDifference: Int
    ) -> [Int] {
        guard nums.count > indexDifference else { return [-1, -1] }
        
        var i = 0
        var j = nums.count - 1
        
        if abs(nums[i] - nums[j]) >= valueDifference, abs(i - j) >= indexDifference {
            return [i, j]
        }
        
        if abs(i - indexDifference) >= indexDifference, abs(nums[i] - nums[indexDifference]) >= valueDifference {
            return [i, indexDifference]
        }
        
        if abs(indexDifference - j) >= indexDifference, abs(nums[indexDifference] - nums[j]) >= valueDifference {
            return [indexDifference, j]
        }
        
        if indexDifference < j {
            j = indexDifference > 0 ? indexDifference : indexDifference + 1
        }

        for (i, numI) in nums.enumerated() {
            for (j, numJ) in nums.enumerated() {
                if abs(i - j) >= indexDifference, abs(numI - numJ) >= valueDifference {
                    return [i,j]
                }
            }
        }
        
        return [-1,-1]
    }
}
