import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

var numbers2 = [Int]()

for i in 1...1000 {
    numbers2.append(i)
}

for number in numbers2 {
    if number % 15 == 0 {
        print("\(number) FizzBuzz")
    } else if number % 3 == 0 {
        print("\(number) Fizz")
    } else if number % 5 == 0 {
        print("\(number) Buzz")
    } else {
        print(number)
    }
}
