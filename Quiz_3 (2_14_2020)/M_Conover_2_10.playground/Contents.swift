import UIKit

//Sets (empty, is empty, insert, count, remove, random element, removeAll, intersection, Union, is subset, subtract, and loops random vs ordered)

//String Set
var courses = Set<String>()

//Check if String is empty
courses.isEmpty

//Sets can be added into with insert
courses.insert("CS4300")
courses.insert("CS3300")
courses.insert("CS1400")
courses.insert("CS2420")

//print coures
print(courses)

//Set count
print(courses.count)
courses.isEmpty

//remove from set
courses.remove("CS4300")
print(courses)

//randomElement (Must be unwrapped)
print(courses.randomElement()!)

//removeAll
courses.removeAll()
//print(courses.randomElement()!) will crash program will crash it if the set is empty

//Set of Ints
var randomNumbers : Set<Int> = [1,4,7,42,30,17,22,35,55,27,91]
var odds : Set<Int> = [1,3,5,7,9,11,13,15,17,19,21]
var otherNums : Set<Int> = [1,3,7,9]

//Intersection
print(randomNumbers.intersection(odds))

//Union
print(randomNumbers.union(odds))

//isSubset
print(odds.isSubset(of: otherNums))

//subtracting
print(otherNums.subtracting(odds))

//Print is random by default
for number in odds {
    print(number)
}

//Prin a set in order
for number in odds.sorted() {
    print(number)
}
