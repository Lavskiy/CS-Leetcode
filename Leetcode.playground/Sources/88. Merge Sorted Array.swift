import Foundation

public enum MergeSortedArray {
    /// Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
    /// Output: [1,2,2,3,5,6]
    /// Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
    /// The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

    public class Solution {
        public static func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            
            var output = [Int]()
            
            // Merge
            
            if m > 0 {
                for index in 0...m - 1 {
                    output.append(nums1[index])
                }
            }

            
            if n > 0 {
                for index in 0...n - 1 {
                    output.append(nums2[index])
                }
            }
         
            if output.count > 1 {
                nums1 = Sort.insertionSort(output)
            } else {
                nums1 = output
            }

        }
    }
}

//let solution = Solution()
//var input = [2,0]
//
//solution.merge(&input, 1, [1], 1)
//
//print(input)
