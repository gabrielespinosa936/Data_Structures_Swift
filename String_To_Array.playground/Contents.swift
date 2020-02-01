import UIKit

var str = "Hello"
var strToArray = Array(str)

var tempArray : [Character] = []
for char in strToArray
{
    tempArray.append(strToArray.removeLast())
}
print(tempArray)
