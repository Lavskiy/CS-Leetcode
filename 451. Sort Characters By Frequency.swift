import Foundation

class Solution {
    func frequencySort(_ s: String) -> String {
        var hash = [Character: String]()
        var last = ""
        var result = ""
        
        s.forEach {
            if var sub = hash[$0] {
                sub.append($0)
                hash[$0] = sub
            } else {
                hash[$0] = String($0)
            }
        }
        
        
        Set(s).forEach {
            let fr = hash[$0] ?? ""
            
            if fr.count > last.count {
                result = fr + result
            } else {
                result = result + fr
            }
            
            last = fr
        }
                        
        return result
    }
}
