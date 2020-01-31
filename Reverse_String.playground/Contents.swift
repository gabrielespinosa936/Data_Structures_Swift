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
//    for char in myArray
//    {
////        if myArray[char] == myArray[char + 1]
////        {
////            return false
////        }
//    }
    return true
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
    
    func insertNode(value : Int)
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
        currentNode?.next = Node(value: value, next: nil)
    }
    func displayNode()
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
            return
        }
        var previousNode : Node?
        var currentNode = head
        while currentNode?.next != nil && currentNode?.value != nil {
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        previousNode?.next = currentNode?.next
    }
}

let linkedList = LinkedList()
var index = 0
while index < 10 {
    linkedList.insertNode(value: index)
    index = index + 1
}

linkedList.displayNode()

linkedList.deleteNode(value: 5)
print("After delete")
linkedList.displayNode()
