import Foundation

class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        let word = "balloon"
        var hash = [Character: Int]()
        var result: Int = 0
        var isEmpty = false
        
        text.forEach {
            hash[$0] = (hash[$0] ?? 0) + 1
        }
        
        while !isEmpty {
            word.forEach {
                if let exist = hash[$0], exist > 0 {
                    hash[$0] = exist - 1
                } else {
                    isEmpty = true
                }
            }
            if !isEmpty {
                result += 1
            }
        }
        
        return result
    }
}
