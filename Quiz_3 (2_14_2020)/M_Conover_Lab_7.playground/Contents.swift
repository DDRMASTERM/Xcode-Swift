import UIKit

/*var lastNumber
  create a set of odd numbers
  create a set of primes numbers
  subtract the primes from odds and print the sorted set
 */
//Largest number
var lastNumber = 31
var odds : Set<Int> = []
var primes : Set<Int> = []

for i in 1...lastNumber {
    if i%2==1 {
        odds.insert(i)
    }
}
var j = 0
var isPrime = true
for i in 1...lastNumber {
    j=2
    while isPrime == true && j <= i/2 {
        if i%j==0{
            isPrime=false
        }
        j+=1
    }
    if isPrime==false {
        isPrime=true
    }
    else {
        primes.insert(i)
    }
}
odds.subtract(primes)
for i in odds.sorted() {
    print(i)
}

