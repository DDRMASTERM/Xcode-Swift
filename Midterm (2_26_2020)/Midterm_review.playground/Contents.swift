import UIKit

// Strings (Multiline, accessing characters with index and offsetBy) and defining double and int
var str = """
multiline
String
Here
"""
print(str)
print(str[str.index(str.startIndex, offsetBy: 8)])
var d : Double = 0.0
var i : Int = 0
// Switch Cases (Int, tuple with _ conditions, multiple elements, and tuple with let/where conditions)
switch i {
case 1:
    print(1)
case 2:
    print(2)
case 3:
    print(3)
default:
    print("I can't cover every possibility!")
}

let t = (0,1)
switch t{
case (0,0):
    print("welcome to the center")
case (_,0):
    print("Y must you do this")
case (0,_):
    print("You're my x")
default:
    print("No valueable quips are possible")
}

var j = (1, "sssssS")
switch j {
case (0..<10, let d):
    print("Perfectly balanced, as all things should be \(d)")
case (10..<20, let d):
    print("I am greater \(d)")
default:
    print("Boring")
}

switch t{
case let (x,y) where x==y:
    print("line x=y")
case let (x,y) where x==(-y):
    print("line x=-y")
case let (x,y) where x<=2 && y<=2:
    print("Think inside the box")
default:
    print("nobody cares about this location")
}

var t2 = (0,5)
if t.0 == t2.0{
    print("These are on a horizontal line")
}
else if t.1 == t2.1 {
    print("These are on a vertical line")
}
else {
    print("Neither horizontal nor vertical relation")
}

// Strings (startIndex, insert, remove, and substring)
str="0abcdefghijklmnopqrstuvwxyz2"
print(str[str.startIndex])
str.insert("1", at: str.index(str.startIndex, offsetBy: 1))
str.remove(at: str.startIndex)
str.remove(at: str.index(str.endIndex, offsetBy: -1))
// Strings (range, removeSubrange, and suffix)
var range = str.index(str.startIndex, offsetBy: 1) ... str.index(str.startIndex,offsetBy: 3)
var remove = str[range]
str.removeSubrange(range)
print(str.suffix(9))
print(str.prefix(7))
print(remove)
// For loops (normal and stride), while, and repeat while loops
var arI = [0,1,2,3,4,5,6,7,8,9]
for i in 0..<arI.count {
    print(i,arI[i])
}
for i in arI {
    print(i)
}
i = 0
while i < 10 {
    print(i)
    i+=1
}
repeat {
    print(i)
    i-=1
} while i>0
// Control Transfers (continue, break, fallthrough) and MyLoop and special break
i=0
while i<10{
    i+=1
    if i < 5 {
        continue
    }
    print("This did not continue")
}
while true {
    print("No escape!")
    if true {
        break
    }
}
print("You escaped!?")
i=1
switch i {
case 0:
    print("Should not execute")
case 1:
    print("This should execute")
    fallthrough
case 2:
    print("Did the deal fallthrough?")
    fallthrough
default:
    print("Eeyep, twice")
}
MyLoop: while true {
    print("escape with a normal break should be impossible")
    MyLoop2: while true {
        break MyLoop
        print("Omae Wa Mo Shinderu")
    }
}

// Arrays (empty, append, default, literal, addition, and two traversal methods)
var a = [Int]()

a.isEmpty
a.append(12)
var abc = Array(repeating: "Yamcha", count: 9)
print(abc)
var arrays = [0,2,4,6,8,10]
arrays = arrays + a
for i in 0..<arrays.count {
    print(arrays[i])
}
for i in arrays{
    print(i)
}
// Arrays (2 output loop, access range, insert, replace value, remove, remove up to index, remove every value, contains, swap values, equals, reverse, shuffle, min, and max)
var ta = [(1,1), (2,2), (3,3), (4,4)]
for (k,v) in ta {
    print(k," ",v)
}
print(arrays[0...3])
arrays.insert(5, at: 2)
arrays[4]=7
arrays.removeFirst(3)
a.removeAll()
arrays.contains(12)
arrays.swapAt(0, 2)
arrays == a
print(arrays.reversed())
print(arrays.shuffled())
print(arrays.min()!," ",arrays.max()!)
// Sets (empty, is empty, insert, count, remove, random element, removeAll, intersection, Union, is subset, subtract, and loops random vs ordered)
var ss = Set<String>()
print(ss.isEmpty)
ss.insert("Frog")
print(ss.count)
ss.remove("Frog")
ss.insert("f")
ss.insert("g")
print(ss.randomElement()!)
ss.removeAll()
ss = ["f", "g", "h"]
var ss2 : Set<String> = ["h","i", "j", "k"]
print(ss.intersection(ss2))
ss.union(ss2)
ss2.isSubset(of: ss)
ss.subtract(ss2)
for s in ss {
    print(s)
}
for s in ss.sorted(){
    print(s)
}
// Hashmaps (Dictionaries, inserts, literal creation, remove, and print)
var man = [Int:String]()
var sd : [String:String] = ["dulock": "is", "a": "creepy", "place": "man"]
sd["f"] = "Fraud"
sd.removeValue(forKey: "place")
for (k,v) in sd {
    print(k," ",v)
}

// Functions (Basic, Return, Argument, Addition, Tuple Return)
func HelloWorld() {
    print("Hello World!")
}
HelloWorld()
func returner() -> String {
    return "This is what you get!"
}
print(returner())
func arg(_ Fact: String) -> Int {
    return Fact.count
}
print(arg("lololololololol"))
func add(_ int1: Int, _ int2: Int) -> Int {
    return int1 + int2
}
print(add(1,5))
func stats(_ arr: [Int]) -> (Int, Int, Int, Double) {
    var dd = 0.0
    for a in arr {
        dd+=Double(a)
    }
    dd=dd/Double(arr.count)
    return (arr.count, arr.max()!, arr.min()!, dd)
}
print(stats([0,1,2,3,4,5]))

/*

Write a code that will check if a line is vertical or horizontal by checking two point in the line that are going to be provided as tuples.

Examples:

point1 = (1 , 3 ) , point2 = (1,5) ==> Vertical line

point1 = (6 , 1 ) , point2 = (3,1) ==> Horizontal line

point1 = (1 , 3 ) , point2 = (3,5) ==> Neither horizontal nor vertical
*/
var point1 = (2,5)
var point2 = (1,2)
if point1.0 == point2.0 {
    print("Vertical line")
}
else if point1.1 == point2.1{
    print("Horizontal line")
}
else {
    print("Neither horizonal nor vertical")
}

/*
Write a code that will check multiples of a value 'x' given a range 's' to 'e'. Define these variables and give them values to be able to run and test your code.
 */

var index = 0
var x : Int = 4
var s : Int = 2
var e : Int = 20
index = s
for index in s...e{
    if (index)%x==0 {
    print(index)
    }
}

