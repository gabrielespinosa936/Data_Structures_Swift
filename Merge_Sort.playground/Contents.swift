import UIKit

func merge(left : [Int], right : [Int]) -> [Int]
{
    var mergeArray : [Int] = []
    var left = left
    var right = right
    
    if left.count > 0 && right.count > 0
    {
        if left.first! > right.first!
        {
            mergeArray.append(left.removeFirst())
        }else
        {
            mergeArray.append(right.removeFirst())
        }
    }
    return mergeArray + left + right
}

func mergeSort(array : [Int]) -> [Int]
{
    let arrCount = array.count - 1
    let divisor = 2
    let middleIndex = arrCount/divisor
    let leftArray = Array(0...arrCount)
    let rightArray = Array(middleIndex...arrCount)
    return merge(left: leftArray, right: rightArray)
}

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
    
    func insert(value : Int)
    {
        if head == nil
        {
            head = Node(value: value, next: nil)
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value , next: nil)
    }
    func displayList()
    {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next
        }
    }
    func deleteNode(value : Int)
    {
        if head?.value == value
        {
            head = head?.next
        }
        var previousNode : Node?
        var currentNode = head
        while currentNode?.next != nil && currentNode?.value != value {
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        previousNode?.next = currentNode?.next
    }
}

let linkedList = LinkedList()
var index = 0
while index < 10 {
    linkedList.insert(value: index)
    index = index + 1
}
linkedList.displayList()
print("After deletion")

linkedList.deleteNode(value: Int.random(in: 0...10))
linkedList.displayList()
