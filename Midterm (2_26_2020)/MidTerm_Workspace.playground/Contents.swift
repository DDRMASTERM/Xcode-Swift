import UIKit

var str1 = """
What is
this
mad Ness?
Okey
"""
print(str1)

var k = 0; var g = 0; var h=0

var d : Double = 5.0
print(d)

var t = ("CS", 4300)
print(t)

var str : String? = "Mario"
print(str1[str1.index(str1.endIndex, offsetBy: -1)])
if str == nil {
    print("This string lacks any content")
}
else {
    let val = str!
    print(val[val.index(val.endIndex, offsetBy: -1)])
}

var numbers : Set<Int> = [1,2,4,5,7,8,9,3,33,12,44,66,57]
var oddNumbers = Set<Int>()
var evenNumbers = Set<Int>()
for n in numbers {
    if n%2==0 {
        evenNumbers.insert(n)
    }
    else {
        oddNumbers.insert(n)
    }
}
print(oddNumbers)
print(evenNumbers)

func intRecurr(_ arr: [Int],_ i: Int) -> (Int, [Int]) {
    var appearances = 0
    var recurrences = [Int]()
    for j in 0..<arr.count {
        if arr[j] == i {
            appearances+=1
            recurrences.append(j)
        }
    }
    return (appearances, recurrences)
}
print(intRecurr([1,2,3,4,5,6,7,8,9,8,7,6,5,6,7,6,5,4,3,2,1], 6))


func subString (_ s: String,_ start: Int,_ end: Int) -> String {
    if start < 0 || end >= s.count {
        sub = "Invalid range"
    }
    else {
        let range = s.index(s.startIndex, offsetBy: start)...s.index(s.startIndex, offsetBy: end)
        var sub = ""
        sub+=s[range]
    }
    return sub
}
var sub = subString("this is my string", 0 , 3)
print(sub)  // --> this should print ' this'
