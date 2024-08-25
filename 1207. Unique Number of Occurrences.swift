import Foundation

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var hash = [Int: Int]()
        var result = false
        var set = Set<Int>()
        
        arr.forEach {
            hash[$0] = (hash[$0] ?? 0) + 1
        }
        
        Set(arr).forEach {
            if let occ = hash[$0] {
                set.insert(occ)
            }
        }
        
        return Set(arr).count == set.count
    }
}
