import Foundation

class Solution {
    /*
     Given two integer arrays nums1 and nums2, sorted in non-decreasing order, return the minimum integer common to both arrays. If there is no common integer amongst nums1 and nums2, return -1.

     Note that an integer is said to be common to nums1 and nums2 if both arrays have at least one occurrence of that integer.

      

     Example 1:

     Input: nums1 = [1,2,3], nums2 = [2,4]
     Output: 2
     Explanation: The smallest element common to both arrays is 2, so we return 2.
     Example 2:

     Input: nums1 = [1,2,3,6], nums2 = [2,3,4,5]
     Output: 2
     Explanation: There are two common elements in the array 2 and 3 out of which 2 is the smallest, so 2 is returned.
     */
    func getCommonHash(_ nums1: [Int], _ nums2: [Int]) -> Int {
        let hash = nums1.enumerated().reduce(into: [Int:Int]()) {
            $0[$1.element] = $1.offset
        }
        
        for i in 0..<nums2.count {
            if hash[nums2[i]] != nil {
                return nums2[i]
            }
        }
        
        return -1
    }
    
    func getCommonTwoPointers(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var i = 0
        var j = 0
        
        while i < nums1.count, j < nums2.count {
            if nums1[i] == nums2[j] {
                return nums1[i]
            } else if nums2[j] > nums1[i] {
                i += 1
            } else {
                j += 1
            }
        }
        
        return -1
    }
}
