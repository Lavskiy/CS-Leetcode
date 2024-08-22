import Foundation

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var hash = [String: Bool]()
        
        paths.forEach { hash[$0.first ?? ""] = true }
        
        for path in paths {
            let dest = path.last ?? ""
            if hash[dest] == nil {
                return dest
            }
        }
        
        return ""
    }
}
