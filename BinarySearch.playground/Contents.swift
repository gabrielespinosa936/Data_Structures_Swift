import UIKit

func binarySearch(array : [Int], target : Int) -> Bool
{
    if array.count == 0
    {
        return false
    }
    let startIndex = 0
    let endIndex = array.count - 1
    let middleIndex = endIndex/2
    let middleValue = array[middleIndex]
    
    if target < array[startIndex] || target > array[endIndex]
    {
        return false
    }
    if target == middleValue
    {
        return true
    }
    if target < array[middleIndex]
    {
        let slice = Array(array[startIndex...middleIndex-1])
        return binarySearch(array: slice, target: target)
    }
    if target > array[middleIndex]
    {
        let slice = Array(array[middleIndex + 1...endIndex])
        return binarySearch(array: slice, target: target)
    }
    return true
    

}
let numbers = [2,4,5,9,12,13,15,19,21,22,25,30]
binarySearch(array: numbers, target: 23)
