import Foundation

public enum FindFirstPalindromicStringInTheArray {
    /*
     Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".

     A string is palindromic if it reads the same forward and backward.

      

     Example 1:

     Input: words = ["abc","car","ada","racecar","cool"]
     Output: "ada"
     Explanation: The first string that is palindromic is "ada".
     Note that "racecar" is also palindromic, but it is not the first.
     Example 2:

     Input: words = ["notapalindrome","racecar"]
     Output: "racecar"
     Explanation: The first and only string that is palindromic is "racecar".
     Example 3:

     Input: words = ["def","ghi"]
     Output: ""
     Explanation: There are no palindromic strings, so the empty string is returned.
     */
    public static func firstPalindrome(_ words: [String]) -> String {
        var idx = 0
        
        while idx < words.count {
            
            let word = words[idx]
            let chars = Array(word)
            
            var left = 0
            var right = chars.count - 1
            var isPalindrome = true
            
            while left < right, isPalindrome {
                isPalindrome = chars[left] == chars[right]
                left += 1
                right -= 1
            }
            
            if isPalindrome {
                return word
            }
            
            idx += 1
        }
        
        return ""
    }
}
