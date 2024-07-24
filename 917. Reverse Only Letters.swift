import Foundation

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        let set = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")

        var left = 0
        var right = s.count - 1
        var s = Array(s.unicodeScalars)
                
        while left < right {
            if set.contains(s[left]) {
                if set.contains(s[right]) {
                    let temp = s[left]
                    s[left] = s[right]
                    s[right] = temp
                    
                    left += 1
                    right -= 1
                    
                } else {
                    right -= 1
                }
            } else {
                left += 1
            }
        }
        
        return s.map { String($0) }.joined(separator: "")
    }
}
