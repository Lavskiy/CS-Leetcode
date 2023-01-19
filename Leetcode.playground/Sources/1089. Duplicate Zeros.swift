import Foundation

/// Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.
/// Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.
///
/// Input: arr = [1,0,2,3,0,4,5,0]
/// Output: [1,0,0,2,3,0,0,4]
/// Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
///
/// Input: arr = [0,0,0,0,0,0,0,0]
/// Output: [0,0,0,0,0,0,0,0]


public enum DuplicateZeros {
    public class Solution {
        public static func duplicateZeros(_ arr: inout [Int]) {
            var output = [Int]()
            for element in arr {
                guard output.count < arr.count else {
                    arr = output
                    return
                }
                if element == 0 {
                    output.append(element)
                    guard output.count < arr.count else {
                        arr = output
                        return
                    }
                    output.append(element)
                } else {
                    output.append(element)
                }
            }
            arr = output
        }
    }
}

//var input = [1,0,2,3,0,4,5,0]
//let output = [1,0,0,2,3,0,0,4]
//
//DuplicateZeros.Solution.duplicateZeros(&input)
//
//print(input == output)

//var input = [0,0,0,0,0,0,0,0]
//let output = [0,0,0,0,0,0,0,0]
//
//DuplicateZeros.Solution.duplicateZeros(&input)
//
//print(input == output)
