import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var hash = [Character: Int]()
        var result = true
        
        magazine.forEach {
            hash[$0] = (hash[$0] ?? 0) + 1
        }
        
        ransomNote.forEach {
            if let count = hash[$0], count > 0  {
                hash[$0] = count - 1
            } else {
                result = false
            }
        }
        
        return result
    }
}
