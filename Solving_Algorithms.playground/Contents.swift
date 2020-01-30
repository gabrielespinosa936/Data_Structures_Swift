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
    let startIndex = 0
    let endIndex = array.count - 1
    let middleIndex = endIndex/2
    let middleValue = array[middleIndex]
    
    if array.count == 0 || target < array[startIndex] || target > array[endIndex]
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

binarySearch(array: numbers, target: 2)

class Node
{
    var value : Int
    var next : Node?
    init(value : Int, next : Node?)
    {
        self.value = value
        self.next = next
    }
}

class LinkedList
{
    var head : Node?
    
    func insertNode(value : Int)
    {
        if head == nil
        {
            head = Node(value: value, next: nil)
            print("Successfully inserted node")
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: nil)
    }
    func displayList()
    {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.value)
            currentNode = currentNode?.next
        }
    }
    func deleteNode(value : Int)
    {
        if head?.value == value
        {
            head = head?.next
        }
        var currentNode = head
        var previousNode : Node?
        while currentNode?.next != nil && currentNode?.value != value {
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        previousNode?.next = currentNode?.next
    }
    func deleteNode()
    {
        
    }
}
let linkedList = LinkedList()
var index = 0
while index < 10 {
    linkedList.insertNode(value: index)
    index = index + 1
}
linkedList.displayList()
linkedList.deleteNode(value: Int.random(in: 0...10))
print("After deletion")
linkedList.displayList()
