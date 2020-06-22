import UIKit

//String range, removeSubrange, and suffix

var s="Hello_World"
//removeSubrange
let range = s.index(s.endIndex, offsetBy: -6) ..< s.endIndex //define range
print(s[range]) //print characters corresponding to range
s.removeSubrange(range) //removing the range from s string
print(s)
var str="one two three"
str.removeSubrange(str.startIndex ..< str.index(str.startIndex, offsetBy: 4)) //this also works
print(str)

// Suffix example
var ss=str.suffix(3) //get number of characters starting from the end of str
print(ss)




