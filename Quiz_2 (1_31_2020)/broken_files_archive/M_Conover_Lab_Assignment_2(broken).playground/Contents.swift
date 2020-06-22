import UIKit

var s1="12345678901"

if s1.count > 10 {
    s1=String(s1.suffix(s1.count/2));
}
print(s1)