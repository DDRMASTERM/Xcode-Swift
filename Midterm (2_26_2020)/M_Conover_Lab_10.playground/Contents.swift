import UIKit

/*
 Create a function that takes a string and returns the number of vowels in that string
 */

func vowelCount (_ str: String) -> Int{
    var v = 0
    let s = str.lowercased()
    for c in s {
        if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" || c == "y" {
            v+=1
        }
    }
    return v
}
print(vowelCount("WhereIdIsatopYoate"))

/*
 Create a function that takes a string and outputs a boolean according to if a string is a
 palindrome
 */
func palindromeCheck (_ str: String) -> DarwinBoolean{
    var b : DarwinBoolean = false
    let p = String(str.reversed())
    if p == str {
        b = true
    }
    return b
}
print(palindromeCheck("amanaplanacanalpanama"))

// Create an array with a bunch of numbers and remove repeats
func noRepeats (_ array: [Int]) -> [Int] {
    var a = [Int]()
    let ar = array.sorted()
    for n in 0..<array.count {
        if n != (array.count-1) {
            if ar[n] == ar[n+1]{
            
            }
            else {
                a.append(ar[n])
            }
        }
        else{
            a.append(ar[n])
        }
    }
    return a
}
print(noRepeats([1,1,2,2,3,3,3,4,5,6,7,7,7,7,8,7,4]))
