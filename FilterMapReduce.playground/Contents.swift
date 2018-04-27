import UIKit

let numbers = [1, 2, 3, 4, 3, 3]

// 1. filter into [3, 3, 3] then filter into [2, 4]

let filtered = numbers.filter({return $0 == 3})
let filtered2 = numbers.filter({return $0 % 2 == 0})
filtered
filtered2

var filteredArray = [Int]()
for number in numbers {
    if number == 3 {
        filteredArray.append(number)
    }
}
filteredArray
filteredArray.append(9)


// 2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map

let transformed = [1, 2, 3, 4].map({return $0 * 2})
transformed

var transformedArray = [Int]()
for number in [1, 2, 3, 4] {
    transformedArray.append(number * 2)
}
transformedArray


// 3. sum [1, 2, 3, 4] -> 10 using reduce

let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})
sum

var sumElements = 0
for number in [1, 2, 3, 4] {
    sumElements += number
}
sumElements
