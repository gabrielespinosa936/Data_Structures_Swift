import UIKit


func twoSum(numbers: [Int], sum : Int) -> [Int]?
{
    if numbers.count > 1
    {
        var map : [Int:Int] = [:]
        for num in numbers
        {
            let compliment = sum - num
            if let other = map[compliment]
            {
                return [num,other]
            }else {
                map[num] = num
            }
        }
    }
    return nil
}

var index = 0
var arrayOfNumbers : [Int] = []
while index < 10
{
    let randomInt = Int.random(in: 0...40)
    arrayOfNumbers.append(randomInt)
    index = index + 1
}

print(arrayOfNumbers)
let result = twoSum(numbers: arrayOfNumbers, sum: 30)

func mergeSort(array : [Int]) -> [Int]
{
    guard array.count > 1 else {
        return array
    }
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left : [Int], right : [Int]) -> [Int]
{
    var mergedArray : [Int] = []
    var left = left
    var right = right
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first!
        {
            mergedArray.append(left.removeFirst())
        }else
        {
            mergedArray.append(right.removeFirst())
        }
    }
    return mergedArray + left + right
}


let numbers = [9,2,3,8,1,7]


print(mergeSort(array: arrayOfNumbers))
