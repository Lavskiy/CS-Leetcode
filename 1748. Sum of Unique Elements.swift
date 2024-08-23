import Foundation

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        
        nums.forEach {
            hash[$0] = (hash[$0] ?? 0) + 1
        }
        
        return nums.reduce(into: 0) {
            if hash[$1] == 1 {
                $0 += $1
            }
        }
    }
}
