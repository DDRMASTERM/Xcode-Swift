import UIKit

//Create a multi-line with the following: This is A multi-line String
var str = """
This is
A multi-line
String
"""
print(str)

//Get the first index of the letter 'n' in the following: "Banana for the minion!"
str = "Banana for the minion!"
var x = 0;
for n in str{
    if n == "n"{
        break
    }
    x+=1
}
print(x)

//Assuming an int myInt, write code to check if this var is nil.
var myInt : Int? = 5
if myInt == nil {
    print("This is not a valid value")
}
else {
    print("This number is \(myInt!)")
}
//for this variable, check if it's really an integer
var myInt2 : String? = "fivefivefive"
if myInt2 == nil {
    print("This is not a valid value")
}
else if let cn = Int(myInt2!){
    print("This number is \(myInt2!)")
}
else {
    print("This is not an Int")
}
//!!!For the following String "This is not a good day!!", write a code to remove the word not.
str = "This is not a good day!!"
let range = str.index(str.startIndex, offsetBy: 8) ... str.index(str.startIndex, offsetBy: 11)
str.removeSubrange(range)
print(str)

//create array of friends of at least 4 and: swap first and last, remove a friend of your choice and
//append a friend to the end of the array
var stA = ["Miles", "Duke", "Don", "Pete"]
stA.swapAt(0, 3)
stA.remove(at: 2)
stA.append("Dan")

//write a function that will take an array of integers that will return the following
func arrInfo (_ array:[Int]) -> (Int, Int, Int, Double) {
    var avg = 0.0
    for i in array{
        avg+=Double(i)
    }
    avg=avg/Double(array.count)
    return(array.count, array.max()!, array.min()!, avg)
}
print(arrInfo([1,2,3,4]))
