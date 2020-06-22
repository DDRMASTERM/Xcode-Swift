import UIKit

//Array containing Fib. sequence
var length = 15
var fib = [Int]()
for i in 0..<length{
    if i<=1 {
        fib.append(i)
    }
    else {
        fib.append(fib[i-2]+fib[i-1])
    }
}
print(fib)
