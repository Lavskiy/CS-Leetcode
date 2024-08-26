import Foundation

class Solution {
    // Formula: n *(n - 1) / 2
    
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        
        nums.enumerated().forEach {
            hash[$0.element] = (hash[$0.element] ?? 0) + 1
        }
 
        return hash.values.reduce(into: 0) {
            $0 += ($1 * ($1 - 1) / 2)
        }
    }
}
