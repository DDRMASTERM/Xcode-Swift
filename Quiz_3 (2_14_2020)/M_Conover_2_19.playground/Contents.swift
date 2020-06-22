import UIKit

// Functions (Basic, Return, Argument, Addition, Tuple Return)


/* Function Syntax:
func functionName (?arguments)---> returnType?
{ body }
*/

//Basic function
func sayHello() {
    print("Hello!")
}

//Call function
sayHello()

//Return function
func returnHello()-> String{
    return "Hello!"
}
var s = returnHello()
print(s)

//argument function
func sayHelloWithName (name: String){
    print("Hello \(name)")
}
sayHelloWithName(name:"Who Cares?")

//addition function
func addNumbers(n1: Int,n2: Int)-> Int{ //(_ n1: Int,_ n2: Int) eliminates need for labels
    return n1+n2
}
var x = addNumbers(n1: 5, n2: 7)
print(x)

//Tuple function
func arrayDetails(arr: [Int]) -> (min: Int, max: Int, avg: Double){
    var sum = 0
    for number in arr {
        sum+=number
    }
    let average:Double = Double(sum/arr.count)
    return (arr.min()!, arr.max()!, average)
}
print(arrayDetails(arr: [1,2,3,4,5,6,7,8,9]))
