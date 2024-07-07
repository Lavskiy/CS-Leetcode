import Foundation

/// Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
/// Input: nums = [-4,-1,0,3,10]
/// Output: [0,1,9,16,100]
/// Explanation: After squaring, the array becomes [16,1,0,9,100].
/// After sorting, it becomes [0,1,9,16,100].

public enum SquaresOfSortedArray  {
    public static func sortedSquares(_ nums: [Int]) -> [Int] {
        var squares = [Int]()

        for element in nums {
            squares.append(element * element)
        }
        
        return Sort.insertionSort(squares)
    }
    
    //let input = [-4,-1,0,3,10]
    //let Output = [0,1,9,16,100]

    //let input = [-5,-3,-2,-1]
    //let Output = [1,4,9,25]
    
    public static func twoPointers(_ nums: [Int]) -> [Int] {
        var i = nums.count - 1
        var left = 0
        var right = nums.count - 1
        var result = nums

        while i >= 0 {
            var sqr: Int = 0
            
            if abs(nums[left]) > abs(nums[right]) {
                sqr = nums[left]
                left += 1
            } else {
                sqr = nums[right]
                right -= 1
            }
            
            result[i] = sqr * sqr
            
            i -= 1
        }
        
        return result
    }
}
