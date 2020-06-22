import UIKit

// for loop using stride and checked with a switch statement
var score = 0
for index  in stride(from: 0, to: 100, by: 5){
    switch index{
        case 0..<60:
            print("You got an F. You idiot!")
        case 60..<70:
            print("You got a D. Try harder next time.")
        case 70..<80:
            print("You got a C. Average.")
        case 80..<90:
            print("You got a B. Nice job.")
        case 90..<101:
            print("You got an A. NERD!🤓")
        default:
            print("This grade is not possible. CHEATER CHEATER PUMPKIN EATER!")
    }
}
