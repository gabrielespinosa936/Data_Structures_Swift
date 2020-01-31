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

let numbers = [3,8,12,9,2,4]
let result = twoSum(numbers: numbers, sum: 16)
var index = 0
var arrayOfNumbers : [Int] = []
while index < 10 {
    let randomInt = Int.random(in: 0...25)
    arrayOfNumbers.append(randomInt)
    index = index + 1
}
print(arrayOfNumbers)

let newResult = twoSum(numbers: arrayOfNumbers, sum: 25)

print(newResult ?? "")
