import Foundation

public enum ContainsDuplicateII {
    /*
     Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

      

     Example 1:

     Input: nums = [1,2,3,1], k = 3
     Output: true
     Example 2:

     Input: nums = [1,0,1,1], k = 1
     Output: true
     Example 3:

     Input: nums = [1,2,3,1,2,3], k = 2
     Output: false
     */
    
    public static func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var left = 0
        var right = 0
        
        while right < nums.count {
            // Check within the window of size k
            if right - left > k {
                left += 1
            } else {
                for i in (left..<right) {
                    if nums[i] == nums[right] {
                        return true
                    }
                }
                right += 1
            }
        }
        
        return false
    }
    
    // 1800 ms 💀 without hash solution
    static func naiveSolution(_ nums: [Int], _ k: Int) -> Bool {
        var left = 0
        var right = 0

        while right < nums.count {
            if left + k < nums.count, nums[left] == nums[left + k] {
                return true
            }
            if nums[left] == nums[right], left != right , abs(left - right) <= k {
                return true
            }
            
            if abs(left - right) > k {
                left += 1
                right = left
            } else {
                if right < nums.count - 1 {
                    right += 1
                } else {
                    left += 1
                    right = left
                }
            }
        }

        return false
    }
}
