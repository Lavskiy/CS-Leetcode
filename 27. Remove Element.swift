import Foundation

public enum RemoveElement {
    
    /*
     Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.

     Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

     Return k after placing the final result in the first k slots of nums.

     Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
     */

    /*
     Input: nums = [3,2,2,3], val = 3
     Output: 2, nums = [2,2,_,_]
     Explanation: Your function should return k = 2, with the first two elements of nums being 2.
     It does not matter what you leave beyond the returned k (hence they are underscores).
     */

    /*
     Input: nums = [0,1,2,2,3,0,4,2], val = 2
     Output: 5, nums = [0,1,4,0,3,_,_,_]
     Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
     Note that the five elements can be returned in any order.
     It does not matter what you leave beyond the returned k (hence they are underscores).
     */
    
    public class Solution {
        public static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            
            // Input check
            
            guard nums.count > 1 else {
                if nums.count == 0 {
                    return 0
                } else {
                    return val != nums[0] ? 1 : 0
                }
            }
                    
            var output = 0
                    
            for i in 0...nums.count - 1 {
                if nums[i] == val {
                    
                    // Swap elements
                    
                    var j = i
                    let element: Int = nums[i]
                    while j < nums.count - 1, nums[j] == val {
                        j += 1
                    }
                    nums[i] = nums[j]
                    nums[j] = element
                    
                }
            }
            
            // Find return value
            // Maybe it has beeter way to find output value
            
            for num in nums {
                if num != val {
                    output += 1
                }
            }
                            
            return output
        }
    }

}
