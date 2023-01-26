import Foundation

public enum MaxConsecutivenes {
    public class Solution {
        public static func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
            var counter: Int = 0
            var max: Int = 0
            
            for element in nums {
                if element == 1 {
                    counter += 1
                } else {
                    counter = 0
                }
                if counter > max {
                    max = counter
                }
            }
            
            return max
        }
    }
}
