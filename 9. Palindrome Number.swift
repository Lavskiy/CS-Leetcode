import Foundation

public enum PalindromeNumber {
    /*
     Given an integer x, return true if x is a
     palindrome
     , and false otherwise.

      

     Example 1:

     Input: x = 121
     Output: true
     Explanation: 121 reads as 121 from left to right and from right to left.
     Example 2:

     Input: x = -121
     Output: false
     Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
     Example 3:

     Input: x = 10
     Output: false
     Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
     */
    
    public static func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        
        var array: [Int] = []
        var temp: Int = x
        var result: Bool = true
        
        if x >= 10 {
            while temp / 10 > 0 {
                array.append(temp % 10)
                let integer = temp / 10
                if  integer >= 10 {
                    temp = integer
                } else {
                    array.append(integer)
                    temp = 0
                }
            }
        } else {
            return true
        }
                
        while array.count > 1, result == true {
            result = array.removeFirst() == array.removeLast()
        }
        
        return result
    }
}
