import UIKit

// Control Transfers (continue, break, fallthrough, special loop, and special break)
var c = 0
while true {
    c+=1
    if c < 10 {
        continue
    }
    break
}
print(c)
switch c {
case 9:
    print("Oops")
case 10:
    print("This should happen")
    fallthrough
case 11:
    print("This is a fallthrough")
default:
    print
}
myLoop: while true {
    myLoop2: while true {
        print("No escape!")
        break myLoop2
    }
    print("No Stop!")
    break myLoop
}
print("NO!!!")



//Arrays (empty, append, default, literal, addition, and two traversal methods)
var e = [String]()
e.append("Just")
e.append("Do")
e.append("It")
var z = Array(repeating: 42, count: 5)
var f = ["Now!", "Please?"]
f=e+f
for i in 0..<e.count {
    print(e[i])
}
for i in f {
    print(i)
}

// Arrays (2 output loop, access range, insert, replace value, remove, remove up to index, remove every value, contains, swap values, elementsEqual, shuffle, min, and max)
var v = [(1,1), (2,2), (3,3)]
for (x,y) in v {
    print("\(x), \(y)")
}
print(f[1...3])
z.insert(7, at:2)
z[0]=43
f.remove(at:4)
z.removeFirst(2)
e.removeAll()
f.contains("Do")
e.contains("It")
e.append("Not")
f.swapAt(2,3)
f.elementsEqual(e)
z.shuffle()
print(z.max()!)
print(z.min()!)

//Sets (empty, is empty, insert, count, remove, random element, removeAll, intersection, Union, is subset, subtract, and loops random vs ordered)
var s = Set<String>()
s.isEmpty
s.insert("Pikachu")
s.insert("Fox")
s.insert("Meta Knight")
s.insert("Bayonetta")
s.insert("Joker")
print(s.count)
print(s.randomElement()!)
s.removeAll()
s.insert("Pikachu")
s.insert("Fox")
s.insert("Meta Knight")
s.insert("Bayonetta")
s.insert("Joker")
var p : Set<String> = []
p.insert("Mew")
p.insert("Lugia")
p.insert("Pikachu")
s.intersection(p)
var sp=s.union(p)
s.isSubset(of: sp)
p.subtract(s)
for o in s {
    print(o)
}
for o in s.sorted() {
    print(o)
}

//Hashmap Dictionary (empty, inserts, literal creation, removeValue, and print)
var d = [String : String]()
d["DBZ"] = "Goku"
d["DBZ"] = "Vegeta"
d["DBZ"] = "Yamcha"
print(d)
var aa = ["Miles" : "Edgeworth", "Phoenix" : "Wright", "Apollo" : "Justice", "Manfred" : "Von Karma"]
aa.removeValue(forKey: "Manfred")
for (k, v) in aa {
    print("\(k) \(v)")
}

// print an array of fibinocci numbers
var fib = [Int]()
for i in 0...10 {
    if i < 2 {
        fib.append(i)
    }
    else {
        fib.append(fib[i-2]+fib[i-1])
    }
}
print(fib)

// divide array into an odd and an even array
var odd = [Int]()
var even = [Int]()
for i in fib {
    if i%2==0 {
        even.append(i)
    }
    else {
        odd.append(i)
    }
}
print(odd)
print(even)
// create a prime array and remove all from array
var prime = Set<Int>()
var fibS = Set<Int>()
for j in fib {
    fibS.insert(j)
}
var not = true
var h = 1
for l in 1...31 {
    h=2
    while h <= l/2 && not{
        if l%h == 0 {
            not=false
        }
        h+=1
    }
    if not == false || l < 2 {
        not=true
    }
    else {
        prime.insert(l)
    }
}
print(prime)
for i in fibS {
    if(prime.contains(i)) {
        fibS.remove(i)
    }
}
print(fibS)

//check for value in dictionary and print if valid
var check = "Sonic"//"Miles"


if aa[check] == nil {
    print("Key not found")
}
else {
    print("Corresponding value is \(aa[check]!)")
}
