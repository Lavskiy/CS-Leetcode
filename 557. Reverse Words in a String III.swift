import Foundation

class Solution {
    /*
     Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

      

     Example 1:

     Input: s = "Let's take LeetCode contest"
     Output: "s'teL ekat edoCteeL tsetnoc"
     Example 2:

     Input: s = "Mr Ding"
     Output: "rM gniD"
      

     Constraints:

     1 <= s.length <= 5 * 104
     s contains printable ASCII characters.
     s does not contain any leading or trailing spaces.
     There is at least one word in s.
     All the words in s are separated by a single space.
     */
    func reverseWords1(_ s: String) -> String {
        var words = s.components(separatedBy: " ")
                
        return words.map {
            var word = Array($0)
            var left = 0
            var right = word.count - 1
            
            while left < right {
                let temp = word[left]
                word[left] = word[right]
                word[right] = temp
                
                right -= 1
                left += 1
            }
            
            return word.map { String($0) }.joined(separator: "")
        }.joined(separator: " ")
    }
    
    func reverseWords(_ s: String) -> String {
        s.components(separatedBy: " ")
            .map { String($0.reversed()) }
            .joined(separator: " ")
    }
}
