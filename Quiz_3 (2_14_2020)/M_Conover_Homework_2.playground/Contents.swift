import UIKit

var numToCheck = 89
var lastNumber = 1000
var odds : Set<Int> = []
var evens : Set<Int> = []
var primes : Set<Int> = []
var fib : Set<Int> = []

var j = 0
var f = 0
var x = 0
var isPrime = true
for i in 0...lastNumber {
    j=2
    if i%2==1 {
        odds.insert(i)
    }
    else {
        evens.insert(i)
    }
    while isPrime == true && j <= i/2 {
        if i%j==0{
            isPrime=false
        }
        j+=1
    }
    if isPrime==false || i == 0 {
        isPrime=true
    }
    else {
        primes.insert(i)
    }
    if i<=2{
        f=i
        fib.insert(f)
    }
    else if f <= lastNumber{
        f=0
        for l in fib.sorted().reversed() {
            if x == 2 {
                x=0
                break
            }
            f+=l
            x+=1
        }
        if f <= lastNumber {
            fib.insert(f)
        }
    }
}

var none = true
var c = "This is contained in the following sets: "
if odds.contains(numToCheck) {
    c+="odds, "
    none=false
}
if evens.contains(numToCheck) {
    c+="evens, "
    none=false
}
if primes.contains(numToCheck) {
    c+="primes, "
    none=false
}
if fib.contains(numToCheck) {
    c+="fib "
    none=false
}
if none==true {
    c+="none"
}
print(c)
