import UIKit

func fibForNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    
    if numSteps <= 1 {
        return sequence
    }
    
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

func fibRecursionForNumSteps(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    
    return [first + second] +
        fibRecursionForNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
}

fibForNumSteps(numSteps: 6)
[0, 1] + fibRecursionForNumSteps(numSteps: 9, first: 0, second: 1)
print([0, 1] + fibRecursionForNumSteps(numSteps: 9, first: 0, second: 1))
