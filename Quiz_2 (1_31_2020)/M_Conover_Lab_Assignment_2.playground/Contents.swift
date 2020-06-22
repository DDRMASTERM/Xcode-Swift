import UIKit

//Cut string in half if length is greater than 10
var s1="12345678901"
if s1.count > 10 {
    s1=String(s1.suffix(s1.count/2));
}
print(s1)
