import UIKit

// For loops (normal and stride), while, and repeat while loops

// For loop example (Basic)
for index in 0..<10 { //end can be set to a variable
    if index%2==0{ //if index is divisible by 2
        print(index)
    }
}

// For loop with stride example (Does same as above without need for an additional if statement)
for index2 in stride(from: 0, to: 10, by: 2){
    print(index2)
}

// While loop example
var index3 = 0
while index3 != 10 { // stop if index3 == 10
    print(index3)
    index3+=1
}

// Repeat-While loop example (Swift equivalent of do-while)
var index4 = 0
repeat{
    print(index4)
    index4+=1
} while index4 < 10
