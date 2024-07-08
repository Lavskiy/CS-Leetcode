import Foundation

public enum MoveZeroes {
    /*
     Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

     Note that you must do this in-place without making a copy of the array.

      

     Example 1:

     Input: nums = [0,1,0,3,12]
     Output: [1,3,12,0,0]
     Example 2:

     Input: nums = [0]
     Output: [0]

     */
    
    //var input = [0,1,0,3,12]
    //let output = [1,3,12,0,0]

    //let input = [0]
    //let output = [0]

    //var input = [2,1]
    
    public static func moveZeroes(_ nums: inout [Int]) {
        var zeroIdx = -1
        var left = 0
        var right = left + 1
        
        while left < nums.count {
            if nums[left] != 0, zeroIdx > -1 {
                nums[zeroIdx] = nums[left]
                nums[left] = 0
                zeroIdx += 1
            }
            
            if nums[left] == 0 {
                if zeroIdx == -1 {
                    zeroIdx = left
                }
            }
            
            left += 1
        }
    }
}
