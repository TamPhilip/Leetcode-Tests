import Cocoa

public func nestedLoops(a: [Int], b: [Int]) -> Int {
    var total: Int = 0
    for n in a {
        for m in b {
            if n == m {
                total += 1
            }
        }
    }
    return total
}

public func binarySearch(a: [Int], b: [Int]) -> Int {
    var total: Int = 0
    var c = b.sorted()
    
    for n in a {
        var left: Int = 0
        var right: Int = b.count
        
        while right > (left + 1){
            let mid = Int(ceil((Double(left + right)) / 2.0))
            if c[mid] > n {
                right = mid
            } else {
                left = mid
            }
        }
        if c[left] == n {
            total += 1
        }
    }
    
    return total
}



public func parallelPointers(a: [Int], b: [Int]) -> Int {
    var total = 0
    var pA = 0
    var pB = 0
    
    while pA < a.count && pB < b.count {
        if a[pA] < b[pB] {
            pA += 1
        } else if a[pA] > b[pB] {
            pB += 1
        } else {
            total += 1
            pA += 1
            pB += 1
        }
    }
    return total;
}

public func mergeAndSort(a: [Int], b: [Int]) -> Int {
    var total = 0
    var c = a + b
    c.sort()
    
    var index = 0
    
    while index < c.count - 1 {
        if c[index] == c[index + 1] {
            total += 1
        }
        index += 1
    }
    
    return total
}

var a: [Int] = [0 , 5, 8, 2, 6, 7,  9, 1, 3, 4 ]
var b: [Int] = [9, 1, 3, 4 ]

nestedLoops(a: a, b: b)
binarySearch(a: a, b: b)
parallelPointers(a: a, b: b)
mergeAndSort(a: a, b: b)
