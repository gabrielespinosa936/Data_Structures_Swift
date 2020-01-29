import UIKit

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
            return
        }
        var currentNode = head
        var previousNode : Node?
        while currentNode != nil && currentNode?.value != value{
            previousNode = currentNode
            currentNode = currentNode?.next
        }
        previousNode?.next = currentNode?.next
    }
    func displayEveryOtherNode()
    {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next?.next
        }
    }

}
let linkedList = LinkedList()
var index = 0
while index < 9 {
    let randomInt = Int.random(in: 1...30)
    linkedList.insertNode(value: randomInt)
    index = index + 1
}
linkedList.displayList()

