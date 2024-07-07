import Foundation

public enum FindPivotIndex {
    
    /*
     Given an array of integers nums, calculate the pivot index of this array.

     The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.

     If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.

     Return the leftmost pivot index. If no such index exists, return -1.
     */
    
    //let input = [1,7,3,6,5,6]
    //let output = 3
    
    //let input = [1,2,3]
    //let output = -1
    
    //let input = [2,1,-1]
    //let output = 0
    
    // O(N^2)
    public static func pivotIndex(_ nums: [Int]) -> Int {
        var index = 0
        
        while index < nums.count {
            var left = 0
            var right = nums.count - 1

            var sumLeft = 0
            var sumRight = 0
            
            while left < index {
                sumLeft += nums[left]
                left += 1
            }
            
            while right > index {
                sumRight += nums[right]
                right -= 1
            }
            
            if sumLeft == sumRight { return index }
            
            index += 1
        }
        
        return -1
    }
}
