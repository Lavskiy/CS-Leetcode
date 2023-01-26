import Foundation

enum FindNumbersWithEvenNumberOfDigits {
    public class Solution {
        public static func findNumbers(_ nums: [Int]) -> Int {
            var evenCounter = 0

            for element in nums {
                var innerCounter = 1
                var current = element
                while (current / 10) != 0 {
                    current = current / 10
                    if current != 0 {
                        innerCounter += 1
                    }
                }
                if (innerCounter % 2) == 0 {
                    evenCounter += 1
                }
            }

            return evenCounter
        }
    }
}

