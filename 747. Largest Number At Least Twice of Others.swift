import Foundation

public enum LargestNumberAtLeastTwiceOfOthers {
    /*
     You are given an integer array nums where the largest integer is unique.

     Determine whether the largest element in the array is at least twice as much as every other number in the array. If it is, return the index of the largest element, or return -1 otherwise.
     */
    
    
//        let input = [3,6,1,0]
//        let output = 1
    
//        let input = [1,2,3,4]
//        let output = -1
    
    public static func dominantIndex(_ nums: [Int]) -> Int {
        var dominant = -1
        var max = 0
        
        nums.enumerated().forEach { index, element in
            if max < element {
                max = element
                dominant = index
            }
        }
        
        nums.enumerated().forEach { index, element in
            guard element != max else { return }
            if max < 2 * element {
                dominant = -1
            }
        }
        
        return dominant
    }
}
