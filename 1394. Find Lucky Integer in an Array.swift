import Foundation

class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var hash = [Int: Int]()
        var largest = -1
        
        arr.forEach {
            let frq = (hash[$0] ?? 0) + 1
            hash[$0] = frq
        }
        
        arr.forEach {
            if hash[$0] == $0 {
                largest = max(largest, $0)
            }
        }
        
        return largest
    }
}
