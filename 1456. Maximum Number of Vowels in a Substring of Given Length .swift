import Foundation

class Solution {
    /*
     Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

     Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.

      

     Example 1:

     Input: s = "abciiidef", k = 3
     Output: 3
     Explanation: The substring "iii" contains 3 vowel letters.
     Example 2:

     Input: s = "aeiou", k = 2
     Output: 2
     Explanation: Any substring of length 2 contains 2 vowels.
     Example 3:

     Input: s = "leetcode", k = 3
     Output: 2
     Explanation: "lee", "eet" and "ode" contain 2 vowels.
     */
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let set = CharacterSet(charactersIn: "aeiou")
        let chars = Array(s.unicodeScalars)
        
        var vowels = 0
        var ans = 0
        var left = 0
        var right = 0
        
        while right < k, right < chars.count {
            if set.contains(chars[right]) {
                vowels += 1
            }
            right += 1
        }
        
        ans = vowels
        
        while right < chars.count {
            if set.contains(chars[left]) {
                vowels -= 1
            }
            if set.contains(chars[right]) {
                vowels += 1
            }
            ans = max(ans, vowels)
            
            left += 1
            right += 1
        }
        
        return ans
    }
}
