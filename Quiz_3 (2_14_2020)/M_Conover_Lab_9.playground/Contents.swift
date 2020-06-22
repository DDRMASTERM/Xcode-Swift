import UIKit

/* create a function that takes the following
   start, length, increment
   return an array starting at start
   having the length on length
   and incrementing by increment */
func createArray(start: Int, length: Int, increment: Int) -> [Int]{
var array = [Int]()
for i in 0..<length{
    array.append(start + (i*increment))
}
    return array
}
var a = createArray(start: 3, length: 5, increment: 7)
print(a)
