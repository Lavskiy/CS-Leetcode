import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hash = [String: [String]]()
        var result = [[String]]()
        
        strs.forEach {
            let sorted = $0.sorted { $0 < $1 }
            
            if var exist = hash[String(sorted)] {
                exist.append($0)
                hash[String(sorted)] = exist
            } else {
                hash[String(sorted)] = [$0]
            }
        }
        
        hash.forEach {
            result.append($0.value)
        }
                
        return result
    }
}
