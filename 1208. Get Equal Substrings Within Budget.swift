import Foundation

class Solution {
    func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
        
        let s = Array(s.utf8)
        let t = Array(t.utf8)
        
        var cost = 0
        var left = 0 , right = 0
        var maxLength = 0

        while right < s.count {
            cost += abs(Int(s[right]) - Int(t[right]))
            
            while cost > maxCost {
                cost -= abs(Int(s[left]) - Int(t[left]))
                left += 1
            }
            
            maxLength = max(maxLength, (right - left + 1))
            
            right += 1
        }
        
        return maxLength
    }
}
