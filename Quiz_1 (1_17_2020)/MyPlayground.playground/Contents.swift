import Cocoa

//

let myOhMy=22
var golf="⛳️"
//myOhMy=10 is invalid (let is a constant set)
print(golf)
var 🤓="NERD!!!!!!" //You can set a variable as an emoji

// :Int :Double :Bool :Float :String

let implicitInt = 10
let explicitInt :Int = 11
var name="Matthew"
var age = 23
print("The name is \(name) and the age is \(age). He is also a \(🤓)") // How to display a string on one line
print(name + String(age))
var multiLine="""
    this is
    my
    String
    """// you cannot put content after the first triple quotations
print(multiLine) // multiline String matches formatting of entered string
var b = 20
var c = 4
print(b,"+",c,"=",b+c)
print(b,"/",c,"=",b/c)
print(b,"-",c,"=",b-c)
print(b,"*",c,"=",b*c)
var person = ("Matthew", 23, true)
print(person)
print(person.0)
print(person.2) //get the first value of a multivalue var with a .#

var empty:Int? //Variable? allows for a nil (Swift equivalent of Null) of that variable type
// remainder %
var munumber = -1
var a = 3
a+=2
var multinum = (23.95, 6.25, 4.0)
print("Matthew is",multinum.0, "Years old is", multinum.1, "inches tall, and has a", multinum.2, "GPA")
(2, "z") < (2,"a") // false because first ones are equal and second ones z is not less than a
