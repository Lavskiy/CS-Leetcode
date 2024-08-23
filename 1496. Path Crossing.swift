import Foundation

class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var hash: [Character: (Int, Int)] = [
            "N": (x: 0, y: 1),
            "E": (x: 1, y: 0),
            "S": (x: 0, y: -1),
            "W": (x: -1, y: 0)
        ]
        
        var visited = (x: 0, y: 0)
        var set = Set<String>(["x\(visited.x)y\(visited.y)"])
                
        for dir in path {
            visited.x += (hash[dir] ?? (x:0,y:0)).x
            visited.y += (hash[dir] ?? (x:0,y:0)).y
            
            let element = "x\(visited.x)y\(visited.y)"

            set.insert(element)
        }
                        
        
        return false
    }
}
