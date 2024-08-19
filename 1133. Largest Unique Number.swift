import Foundation

class Solution {
    func largestUniqueNumber(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        var max = -1
        
        nums.forEach {
            hash[$0] = (hash[$0] ?? 0) + 1
        }
        
        nums.forEach {
            if hash[$0] == 1, max < $0 {
                max = $0
            }
        }
        
        return max
    }
}
