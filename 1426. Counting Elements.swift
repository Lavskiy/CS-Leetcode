import Foundation

class Solution {
    func countElements(_ arr: [Int]) -> Int {
        var hash = [Int: Int]()
        var result = 0
        
        arr.forEach {
            let value = hash[$0 + 1] ?? 0
            hash[$0 + 1] = value + 1
        }
        
        arr.forEach {
            if let exist = hash[$0] {
                result += exist
                hash[$0] = nil
            }
        }
        
        return result
    }
}
