import UIKit

var animal = "rhino"

var emojis = ["dog": "🐶", "bee" : "🐝", "cat" : "🐱", "koala" : "🐨",  "monkey": "🐵"]




if emojis[animal] == nil {
  print("That was not found")
}
else{
    print("That is a \(emojis[animal]!)")
}

