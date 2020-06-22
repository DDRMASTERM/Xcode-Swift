import UIKit

//Hashmaps (Dictionaries, inserts, literal creation, remove, and print)

//Create an empty dictionary
var animals = [String : String]()
animals.isEmpty

//Insert elements
animals["🐭"] = "Mouse"
animals["🐭"] = "Mouse2"
print(animals)

//Using the dictionary literal
var airports = ["SLC" : "Salt Lake City", "SGU" : "St. George", "NYC" : "New York City"]
print(airports["SLC"]!) //Must be unwrapped if using this access method

//remove from dictionary
airports.removeValue(forKey: "SLC")
print(airports["SLC"]) //Will crash if unwrapped since it was removed

//Print every value in an array
for (k, v) in airports {
    print("This airport is "+k+" in "+v)
}
