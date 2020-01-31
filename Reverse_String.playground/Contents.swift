import UIKit

func revString(word : String)
{
    var wordArray : [Character] = []
    for char in word
    {
        wordArray.append(char)
        
    }
    var index = 0
    while wordArray.count != 0 {
        wordArray.removeLast()
        index = index + 1
    }
}

revString(word: "hello")


func isUnique(word : String) -> Bool
{
    var myArray : [Character] = []
    for char in word
    {
        myArray.append(char)
    }
    myArray.sort()
    for char in myArray
    {
        if myArray[char] == myArray[char + 1]
        {
            return false
        }
    }
    return true
}
