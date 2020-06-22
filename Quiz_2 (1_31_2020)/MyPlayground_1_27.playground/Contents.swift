import UIKit

// Switch Cases (Int, tuple with _ conditions, multiple elements, and tuple with let/where conditions)

// Switch case with one int
var score = -1//grade = "a"
switch score{//grade {
case 90..<100://"A", "a":
  print("Congrats NERD!🤓 You got an A")
case 80..<90://"B", "b":
  print("Almost a NERD!🤓 You got a B")
case 70..<80://"C", "c":
  print("Average Joe.🙂 You got a C")
case 60..<70://"D", "d":
  print("Did you even try?😐 You got a D")
case 0..<60://"F", "f":
  print("Idiot!😠 You got an F")
default:
  print("wat?")
}

// Switch case with a tuple and _ (don't care) cases
let somePoint = (2,2)
switch somePoint{
case (0,0):
  print("\(somePoint) is at the origin")
case (_,0):
  print("\(somePoint) is on the x-axis")
case (0,_):
  print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
  print("\(somePoint) is inside the box")
default:
  print("\(somePoint) is outside the box")
}

// Switch case with multiple elements
var grade = (91, "CS4300")
switch grade{//grade {
case (90..<100, let course)://"A", "a":
  print("You got an A in \(course) NERD!🤓")
case (80..<90, let course)://"B", "b":
  print("You got a B in \(course), nearly a NERD!🤓")
case (70..<80, let course)://"C", "c":
  print("You got a C in \(course), like an average joe.🙂")
case (60..<70, let course)://"D", "d":
  print("You got a D in \(course), Did you even try?😐 ")
case (0..<60, let course)://"F", "f":
  print("You got an F in \(course), Idiot!😠")
case (_,_):
  print("Okay but why though?")
default:
  print("wat?")
}

// Switch case tuple with let (x, y) where comparison conditions
let anotherPoint = (0,0)
switch anotherPoint{
case let (x,y) where x == y:
  print("\(anotherPoint) is on the x=y line")
case let (x,y) where x == -y:
  print("\(anotherPoint) is on the x=-y line")
case let (x,y):
  print("\(anotherPoint) is merely a random point")
default:
  print("You broke the program, good job!")
}

