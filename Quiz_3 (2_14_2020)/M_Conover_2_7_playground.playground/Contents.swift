import UIKit

// Arrays (2 output loop, access range, insert, replace value, remove, remove up to index, remove every value, contains, swap values, equals, reverse, shuffle, min, and max)

// fibnocci
var fib = [Int]()
for i in 0..<15{
    if i<=1 {
        fib.append(i)
    }
    else {
        fib.append(fib[i-2]+fib[i-1])
    }
}
print(fib)

// for loop with 2 outputs
for (ind, val) in fib.enumerated() {
    
    print("\(ind)- \(val)")
    
}

var friends = ["Bob", "Mike", "Mary", "Linda", "Nate", "John"]

//access range of array values
print(friends[1...3])

//insert in an array
friends.insert("My newly inserted friend", at: 3)
print(friends)

//replaces previous value
friends[3] = " "
print(friends)

//remove from an array
friends.remove(at: 3)
print(friends)

//remove all up to index
friends.removeFirst(3)
print(friends)

//self-explanatory
friends.removeAll()
print(friends)


friends = ["Bob", "Mike", "Mary", "Linda", "Nate", "John"]
var otherArray = friends

//contains
print(friends.contains("Linda")) //case-sensitive

//swapAt
friends.swapAt(0, 1)
print(friends)
friends.swapAt(0, 1)

//elements equal
print(friends.elementsEqual(otherArray))
friends.swapAt(0, 1)
print(friends.elementsEqual(otherArray))

//Reverse
var f = friends.reverse()
print(f)

//shuffle
print(friends.shuffle())

//min
print(friends.min())

//max
print(friends.max())
