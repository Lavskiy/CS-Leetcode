import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var hash = [Character: Int]()
        var left = 0
        var res = 0
        
        s.enumerated().forEach {
            if let occ = hash[$0.element] {
                left = max(left, occ + 1)
            }
            res = max(res, $0.offset - left + 1)
            hash[$0.element] = $0.offset
        }
        
        return res
    }
}
