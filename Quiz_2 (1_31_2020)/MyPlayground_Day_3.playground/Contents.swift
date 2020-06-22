import UIKit

// Strings (firstIndex, insert, remove, and substring)

var s = "abcdefg"
// firstIndex examples
s.firstIndex(of: "b")
print(s.firstIndex(of: "z")) //nil, as z is not a character in s

//insert examples
s.insert("🙂", at: s.startIndex) //insert at start
var emojis="🤩😥"
s.insert(contentsOf : emojis , at : s.firstIndex(of: "c")!) // insert variable before first instance of a specified character is
print(s)

// remove examples
s.remove(at : s.firstIndex(of: "g")!) //remove first instance of given characters
s.remove(at : s.firstIndex(of: "🙂")!)
s.remove(at : s.firstIndex(of: "😥")!)
print(s)
s.remove(at : s.index(s.endIndex, offsetBy: -5)) //remove by character location
print(s)

//string count example (swift equivalent of .length()
var s1="12345678901"
if s1.count > 10 {
    s1=String(s1.suffix(s1.count/2));
}
print(s1)

// Substring example
var str = "first second third"
let range = str.index(str.startIndex, offsetBy: 6) ..< str.index(str.startIndex, offsetBy: 12)
var substr = str[range]
print(substr)


