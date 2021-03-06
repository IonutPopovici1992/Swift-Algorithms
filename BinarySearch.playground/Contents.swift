import UIKit

let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

var oneHundred = [Int]()
for i in 1...100 {
    oneHundred.append(i)
}

/*
func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    for number in array {
        if number == searchValue {
            return true
        }
    }
    return false
}

print(linearSearchForSearchValue(searchValue: 5, array: numbers))
// false
*/


func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    print("leftIndex: \(leftIndex)")
    print("rightIndex: \(rightIndex)")
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}

print(binarySearchForSearchValue(searchValue: 99, array: oneHundred))
