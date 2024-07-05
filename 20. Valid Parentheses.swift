import Foundation

public enum ValidParentheses {
    
    /*
     Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

     An input string is valid if:

     Open brackets must be closed by the same type of brackets.
     Open brackets must be closed in the correct order.
     Every close bracket has a corresponding open bracket of the same type.
      

     Example 1:

     Input: s = "()"
     Output: true
     Example 2:

     Input: s = "()[]{}"
     Output: true
     Example 3:

     Input: s = "(]"
     Output: false
     */
    
    
    public static func isValid(_ s: String) -> Bool {
        
        class Stack<T> {
            var array: [T] = []
            
            func push(_ element: T) {
                array.append(element)
            }
            
            func pop() -> T? {
                array.popLast()
            }
        }
        
        return true
    }
    
    /// 282ms beats 5.77%
    static func slowSolution(_ s: String) -> Bool {
        guard s.count > 1 else { return false }
        
        let hash: [Character: Character] = [")":"(","]":"[","}":"{"]
        let open = "(,[,{"
        
        var stack = [Character]()
        var sMutable = s
        
        while sMutable.count > 0 {
            let element = sMutable.removeFirst()
            
            if open.contains(element) {
                stack.insert(element, at: 0)
            } else {
                if hash[element] == stack.first {
                    stack.removeFirst()
                } else {
                    return false
                }
            }
        }
        
        return stack.count == 0
    }
}
