import Foundation

public enum ShortestDistanceToACharacter {
    /*
     Example 1:

     Input: s = "loveleetcode", c = "e"
     Output: [3,2,1,0,1,0,0,1,2,2,1,0]
     Explanation: The character 'e' appears at indices 3, 5, 6, and 11 (0-indexed).
     The closest occurrence of 'e' for index 0 is at index 3, so the distance is abs(0 - 3) = 3.
     The closest occurrence of 'e' for index 1 is at index 3, so the distance is abs(1 - 3) = 2.
     For index 4, there is a tie between the 'e' at index 3 and the 'e' at index 5, but the distance is still the same: abs(4 - 3) == abs(4 - 5) = 1.
     The closest occurrence of 'e' for index 8 is at index 6, so the distance is abs(8 - 6) = 2.
     Example 2:

     Input: s = "aaab", c = "b"
     Output: [3,2,1,0]
     */
    public static func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        var result: [Int] = Array(repeating: 0, count: s.count)
        var input = Array(s)
        var idx: Int = 0
        
        var occ: [Int] = []
        var occIdx: Int = 0
        
        while idx < s.count {
            if input[idx] == c {
                occ.append(idx)
            }
            idx += 1
        }
        
        idx = 0
        
        while idx < s.count {
            if idx != occ[occIdx] {
                if occIdx > 0  {
                    if abs(idx - occ[occIdx]) < abs(idx - occ[occIdx - 1]) {
                        result[idx] = (abs(idx - occ[occIdx]))
                    } else {
                        result[idx] = (abs(idx - occ[occIdx - 1]))
                    }
                } else {
                    result[idx] = (abs(idx - occ[occIdx]))
                }
            } else {
                if occIdx < occ.count - 1 {
                    occIdx += 1
                }
            }
            
            idx += 1
        }
        
        return result
    }
}
