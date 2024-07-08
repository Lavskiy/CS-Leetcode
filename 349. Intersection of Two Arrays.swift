import Foundation

public enum IntersectionTwoArrays {
    
    /*
     Given two integer arrays nums1 and nums2, return an array of their
     intersection
     . Each element in the result must be unique and you may return the result in any order.

     Example 1:

     Input: nums1 = [1,2,2,1], nums2 = [2,2]
     Output: [2]
     Example 2:

     Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
     Output: [9,4]
     Explanation: [4,9] is also accepted.
     */
    
    //let nums1 = [4,9,5]
    //let nums2 = [9,4,9,8,4]
    
    public static func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hash: [Int: Int] = [:]
        var result: [Int] = []
        
        nums1.forEach { element in
            hash[element] = 1
        }
        
        nums2.forEach { element in
            if hash[element] != nil {
                result.append(element)
                hash[element] = nil
            }
        }
        
        return result
    }
}
