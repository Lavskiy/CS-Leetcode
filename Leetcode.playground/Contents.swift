import Foundation

/*
 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
 
 Input: nums = [1,1,2]
 Output: 2, nums = [1,2,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 
 Input: nums = [0,0,1,1,1,2,2,3,3,4]
 Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */

enum RemoveDuplicatesFromSortedArray {}

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        // Return result for empty or one element array
        
        var output = nums.count
        
        // Iterate over array and compare elements to find duplicates
        
        for (index, element) in nums.enumerated() {
            for compared in nums.dropFirst(index + 1) {
                if compared == element {
                    
                }
            }
        }
        
        return output
    }
    
    func naiveSolution(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }

        var result = 0
        var i = 0
        
        while i < nums.count - 1 {
            var j = i + 1
            
            while j < nums.count - result {
                if nums[j] == nums[i] {
                    var k = j
                    while k < nums.count - 1 {
                        var next = nums[k + 1]
                        nums[k + 1] = nums[k]
                        nums[k] = next
                        k += 1
                    }
                    result += 1
                } else {
                    if j > 1, nums[j] == nums[j-1] {
                        var k = j
                        while k < nums.count - 1 {
                            var next = nums[k + 1]
                            nums[k + 1] = nums[k]
                            nums[k] = next
                            k += 1
                        }
                        result += 1
                    }
                }
                j += 1
            }
            i += 1

        }
        
        if result == 0 {
            return nums.count
        } else {
            return nums.count - result
        }
    }
}

var input: [Int] = [0,0,1,1,1,2,2,3,3,4]

Solution().removeDuplicates(&input)
print(input)

