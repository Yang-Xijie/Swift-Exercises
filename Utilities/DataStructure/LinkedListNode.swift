import Foundation

class LinkedListNode {
    typealias DataType = Int

    var data: DataType
    var next: LinkedListNode?

    init(data: DataType) {
        self.data = data
        self.next = nil
    }

    func append(data: DataType) {
        var current = self
        while current.next != nil {
            current = current.next!
        }
        current.next = LinkedListNode(data: data)
    }
}

extension LinkedListNode: CustomStringConvertible {
    var description: String {
        let result = String(describing: self.data)
        return result.appending(self.next == nil ? "" : " -> \(self.next!.description)")
    }
}

func reverse(head: LinkedListNode) -> LinkedListNode {
    var previous: LinkedListNode?
    var current: LinkedListNode = head

    while true {
        if current.next != nil { // current is not tail
            let saved_current_next = current.next!

            current.next = previous

            previous = current
            current = saved_current_next
        } else { // current is tail
            current.next = previous
            return current
        }
    }
}
