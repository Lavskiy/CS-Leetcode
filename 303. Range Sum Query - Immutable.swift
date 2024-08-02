import Foundation

class NumArray {
    let nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        
        for i in left...right {
            sum += nums[i]
        }
        
        return sum
    }
}
