import UIKit

func revString(word : String)
{
    var wordArray : [Character] = []
    for char in word
    {
        wordArray.append(char)
        
    }
    print(wordArray)
}

revString(word: "hello")
