import Foundation

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitudes = [0]
        var highest = 0
        
        for i in 0..<gain.count {
            altitudes.append(gain[i] + altitudes[altitudes.count - 1])
        }
        
        altitudes.forEach {
            highest = max(highest, $0)
        }
                
        return highest
    }
}
