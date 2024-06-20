import Foundation

public enum Sort {
    public static func insertionSort(
        _ input: [Int]
    ) -> [Int] {
        guard input.count > 2 else { return input }
        
        var output: [Int] = input
        
        for j in 1...output.count-1 {
            let key = output[j]
            var i = j - 1
            while i >= 0, output[i] > key {
                output[i + 1] = output[i]
                i -= 1
            }
            output[i + 1] = key
        }
        
        return output
    }
}
