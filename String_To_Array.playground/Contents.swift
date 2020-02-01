import UIKit

var str = "Hello"
var strToArray = Array(str)

var tempArray : [Character] = []
for char in strToArray
{
    tempArray.append(strToArray.removeLast())
}
print(tempArray)


class Node
{
    var value : Character
    var next : Node?
    init(value : Character, next : Node?)
    {
        self.value = value
        self.next = next
    }
}

class LinkedList
{
    var head : Node?
    func insertNode(value : Character)
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
let list = LinkedList()
for index in tempArray
{
    list.insertNode(value: index)
}
list.displayList()
