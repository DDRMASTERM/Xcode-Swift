import UIKit

// Control Transfers (continue, break fallthrough) and MyLoop and special break

// continue example
for index in 0...10{
    if index % 2==1 { //skip iteration if true
        continue //skip to next iteration
    }
    print(index)
}

// break example
for index in 0...10{
    if index == 6 { //end loop if true
        break //end loop
    }
    print(index)
}

//fallthrough example
var num = 4
switch num {
case 4: // num == 4
    print("larger than 3")
    fallthrough // Go to next case
case 2: // num == 2
    print("larger than 1")
    fallthrough // Go to next case
default:
    print("done checking")
}

//myLoop example
var number = 1
myLoop: while true {
    myLoop2: while true { // myLoop2
        print("Welcome to myLoop2")
        if(number>0) { // number is greater than 0
            break myLoop2 // break myLoop2
        }
        else{
            print("Welcome to your doom?!")
        }
    }
    print("entering the loop for iteration number \(number)")
    if number < 10 {// less than 10
        number+=1
        continue myLoop // continue myLoop
    }
    else {
        break myLoop // end myLoop
    }
}

