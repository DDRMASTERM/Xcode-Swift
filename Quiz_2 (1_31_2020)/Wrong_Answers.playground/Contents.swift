import UIKit


var textbox : String? = nil​ // Lab 3: (Take an input and check for if nil before converting to non-optional)if textbox == nil {
if textbox == nil {
    print("That was nothing")
}
else{

  var conv = Int(textbox!)

if let cn = conv {
  print("You have entered \(textbox!)")
} else {
  print("\(textbox!) is not a number")
}
}
