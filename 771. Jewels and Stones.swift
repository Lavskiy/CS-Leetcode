import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
                
        stones.forEach {
            if jewels.contains($0) { result += 1 }
        }
        
        return result
    }
}
