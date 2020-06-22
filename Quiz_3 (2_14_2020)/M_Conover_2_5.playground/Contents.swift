import UIKit

//Arrays (empty, append, default, literal, addition, and two traversal methods)

//Create an empty array
var empStrArr = [String]()
var intArr = [Int]()

//Add an element to an array
intArr.append(10)
intArr.append(20)
print(empStrArr)
print(intArr)

//Default value array
var sixInts = Array(repeating: 42, count: 6)
var sevenClouds = Array(repeating: "Cloud", count: 7)
print(sixInts)

//Array Literal
var friends = ["Bob", "Mike", "Mary", "Linda"]
var otherFriends = ["Nate", "John"]

// Array addition
var allFriends = friends+otherFriends
print(allFriends)

//Array traversal
for index in 0...allFriends.count-1{
    print(allFriends[index])
}

for friend in allFriends{
    print(friend)
}
