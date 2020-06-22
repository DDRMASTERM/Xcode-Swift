import UIKit

var numArr = [1, 6, 3, 9, 44, 90, 2, 33, 12, 6, 8, 4, 5, 8, 18, 66, 0, 11]
numArr.reverse()
var odds = [Int]()
var evens = [Int]()

for i in numArr {
    if i%2 == 0 {
        evens.append(i)
    }
    else {
        odds.append(i)
    }
}
print("odd numbers: \(odds)")
print("even numbers: \(evens)")
