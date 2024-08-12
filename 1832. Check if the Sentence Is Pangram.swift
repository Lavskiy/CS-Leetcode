import Foundation

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set = Set<Character>()
                
        sentence.forEach {
            set.insert($0)
        }
        
        return set.count == 26
    }
}
