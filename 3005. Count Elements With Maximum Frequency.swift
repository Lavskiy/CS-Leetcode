import Foundation

class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        var maxFrequency = 0
        var result = 0
        
        nums.forEach {
            let frequency = (hash[$0] ?? 0) + 1
            hash[$0] = frequency
            maxFrequency = max(maxFrequency, frequency)
        }
        
        nums.forEach {
            if hash[$0] == maxFrequency {
                result += 1
            }
        }
        
        return result
    }
}
