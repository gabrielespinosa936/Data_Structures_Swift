import UIKit
func notFound() -> Bool
{
    print("The target is not in the array")
    return false
}
func foundTarget() -> Bool
{
    print("Target found!")
    return true
}

func binarySearch(array : [Int], target : Int) -> Bool
{
    if array.count == 0
    {
        notFound()
        return false
    }
    let startIndex = 0
    let endIndex = array.count - 1
    let middleIndex = endIndex/2
    let middleValue = array[middleIndex]
    
    if target < array[startIndex] || target > array[endIndex]
    {
        return notFound()
    }
    if target == middleValue
    {
        foundTarget()
    }
    if target < middleValue
    {
        let slice = Array(array[startIndex...middleIndex - 1])
        binarySearch(array: slice, target: target)
    }
    if target > middleValue
    {
        let slice = Array(array[middleIndex + 1...endIndex])
        binarySearch(array: slice, target: target)
    }
    return true
}
var numbers = [2,8,16,22,24,24,29,31,33,37,40]


if binarySearch(array: numbers, target: 24) == true
{
    print("Found in this array")
}else
{
    print("Could not find in this array")
}
