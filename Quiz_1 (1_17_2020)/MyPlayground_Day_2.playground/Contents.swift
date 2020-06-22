import UIKit

// Strings (Multiline, accessing characters with index and offsetBy) and defining double and int

var str = """
    this
    is
    a
    multiline
""" // """ allows for the creation of a multiline string
print(str)
//let dollarSign = "\u24" // $, Unicode scalar U+0024
var emp=""// Empty String v1
var empty=String() //Empty String v2
var n : Double=4.0
var st="one two three" //one two three
var s=st+"A" // s = (st)"A"
var m=1 // m is an int = 1

//Remember, access individual characters of a string like an array of characters
print(st[st.index(before: st.endIndex)]) //access end of string method one
// offsetBy

print(st[st.index(st.startIndex, offsetBy: 0)])// start index is start of string, access it with offset of 0

print(st[st.index(st.endIndex, offsetBy: -1)]) // endIndex is one past end of string, access end with -1
