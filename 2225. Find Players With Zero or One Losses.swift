import Foundation

class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var hash: [Int: Int] = [:]
        var res1 = Set<Int>()
        var res2 = Set<Int>()
        
        matches.forEach {
            hash[$0[1]] = (hash[$0[1]] ?? 0) + 1
        }
                
        matches.forEach {
            if hash[$0[0]] == nil {
                res1.insert($0[0])
            }
            
            if hash[$0[1]] == 1 {
                res2.insert($0[1])
            }
        }
        
        return [
            Array(res1).sorted { $0 < $1 },
            Array(res2).sorted { $0 < $1 }
        ]
    }
}
