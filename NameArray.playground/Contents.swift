import UIKit

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDictionary = [String: Int]()
    
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDictionary.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count2 = nameCountDictionary[key]
            if count2 > nameCountDictionary[mostCommonName] {
                mostCommonName = key
            }
        }
        print("\(key): \(nameCountDictionary[key]!)")
    }
    
    return mostCommonName
}

mostCommonNameInArray(array: ["Bob", "Sally", "Bob", "Sam", "Michael", "Bob", "Michael", "Michael", "Michael"])
