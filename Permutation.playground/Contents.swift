import UIKit

func isPermutation(word : String) -> Bool
{
    var charactersInWord : Set<Character> = []
    word.trimmingCharacters(in: .whitespaces)
    for char in word
    {
        if charactersInWord.contains(char)
        {
            charactersInWord.remove(char)
        }else
        {
            charactersInWord.insert(char)
        }
    }
    return charactersInWord.count <= 1
}


isPermutation(word: "racecarrr")
