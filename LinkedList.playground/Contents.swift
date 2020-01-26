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
}
let linkedList = LinkedList()
var index = 0
while index < 10 {
    linkedList.insertNode(value: index)
    index = index + 1
}
linkedList.displayList()
