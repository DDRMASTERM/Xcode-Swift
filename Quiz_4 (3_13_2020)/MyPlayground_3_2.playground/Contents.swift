import UIKit

// Functions (flexible input) and Structs (Basic)

func average(_ numbers: Double...) -> Double {
    var total = 0.0
   // var count = 0.0
    for number in numbers {
        total+=number
        //count+=1
    }
    return total/Double(numbers.count)
}
print(average(11,2,3,4,5,6,7,8,9,7,48))

//easier to design and more flexible to create clones than classes
struct Person {
    var age : Int
    var name : String
    
    func info(){
        print("my name is \(name) and I am \(age) years old")
    }
}

let p1 = Person(age: 20, name: "John")
p1.info()
