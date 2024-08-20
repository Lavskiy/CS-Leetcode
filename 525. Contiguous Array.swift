import Foundation

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()
        var maxLength: Int = 0
        var prefixSum = 0

        nums.enumerated().forEach {
            prefixSum += $0.element == 0 ? -1 : 1
            
            if prefixSum == 0 {
                maxLength = max(maxLength, $0.offset + 1)
            }
            
            if let exist = hash[prefixSum] {
                maxLength = max(maxLength, $0.offset - exist)
            } else {
                hash[prefixSum] = $0.offset
            }
            
        }
        
        return maxLength
    }
}
