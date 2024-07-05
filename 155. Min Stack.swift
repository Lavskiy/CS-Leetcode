import Foundation

public enum MinStack {
    
    public class Optimized {
        var stack: [Int] = []
        var minStack: [Int] = []
        
        init() {}
        
        public func push(_ val: Int) {
            stack.append(val)
            if minStack.isEmpty || val <= minStack.last! {
                minStack.append(val)
            }
        }
        
        public func pop() {
            if stack.popLast() == minStack.last {
                minStack.popLast()
            }
        }
        
        public func top() -> Int {
            stack.last ?? .zero
        }
        
        public func getMin() -> Int {
            minStack.last ?? .zero
        }
    }

    public class OneArraySolution {
        var array: [Int] = []
        var min: Int = .zero
        
        init() {}
        
        public func push(_ val: Int) {
            if array.isEmpty {
                min = val
            } else {
                if val < min {
                    min = val
                }
            }
            
            array.append(val)
        }
        
        // O(N) complexity
        public func pop() {
            array.popLast()
            min = array.reduce(into: top()) {
                if $0 > $1 { $0 = $1 }
            }
        }
        
        public func top() -> Int {
            array.last ?? .zero
        }
        
        public func getMin() -> Int {
            min
        }
    }
}
