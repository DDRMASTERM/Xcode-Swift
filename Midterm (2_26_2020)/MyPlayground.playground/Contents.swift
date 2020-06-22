import UIKit

/*Q1:
 Place the following in a multiline String without using \n
this is
a multi-line
String.*/
var str = """
this is
a multi-line
String.
"""
print(str)
/*Q2:
 in the following string: “This is a Banana for the minion!”, write a code to find the index of
the first occurrence of the letter ‘n’
Q2. bonus: get the location of the letter in the string
 */
str = "This is a Banana for the minion!"
var l = str.firstIndex(of: "n")
var x = 0
for i in 0..<str.count{
    if str[str.index(str.startIndex, offsetBy: i)] == "n" {
        x=i
        break
    }
}
print(l, x)
/*Q3:
for the following string: “ This is not a great day!!”, write a piece of code o remove the
word “not” from the String.
Q4:
Write a piece of code to store the word not from the previous question into a new variable.
*/str = "This is not a great day!!"
var range = str.index(str.startIndex, offsetBy: 8)...str.index(str.startIndex, offsetBy: 11)
var rem = str[range]
str.removeSubrange(range)
print(rem," \n",str)

/*Q5:
for a variable (supposed to hold an integer) called myInt, write an if statement to check if
the variable is nil or not.
Q6:
 for the previous variable, write a code to test if the content of the variable is of type
integer.
 */
var myInt : String? = "'"
if myInt == nil {
    print("Invalid input")
} else if let cn = Int(myInt!) {
    print("You entered \(myInt!)")
}
else {
    print("That was not a number")
}
/*Q7:
write a loop that will print an
x
 by
y
 grid that will contain the values of x and y as “x,y”.
 */
x = 0
str = "\n"
var y = 0
var size = 5
var s = (0, 0)
while true {
    s=(x,y)
    if (y>5) {
        break
    }
    str+="\(s) "
    x+=1
    if x>size {
        y+=1
        x=0
        str+="\n"
    }
}
print(str)
/*Q8:
Create an array of friends containing at least 4 friends.
*/
var friends = ["Bob", "Steven", "Olivia", "Rachel"]
/*Q9:
write a code to do the following:
1.
   swap the first and last elements.
2.
   Add an element at the end of the array.
3.   Sort the array in alphabetical order.
 */
friends.swapAt(0,3)
friends.append("Lucy")
print(friends)
friends=friends.sorted()
print(friends)
/*Q10:
write a function that will take an array of Strings as input and will output an array of all
strings that have more than 5 characters.
 */
func sizeCheck (_ Arr: [String]) -> [String] {
    var newSA = [String]()
    for n in Arr{
        if n.count > 5{
            newSA.append(n)
        }
    }
    return newSA
}
print(sizeCheck(friends))
/*Q11:
Write a function that will take an array of integers as its input and will output the following
information as a tuple: number of elements, maximum number, minimum number, average.
*/
func arrStats (_ aaa: [Int]) -> (Int, Int, Int, Double) {
    var avg = 0.0
    for i in 0..<aaa.count {
        avg += Double(aaa[i])
    }
    avg = (avg/Double(aaa.count))
    return (aaa.count, aaa.max()!, aaa.min()!, avg)
}
print(arrStats([1,2,3,4,5,6,7]))

