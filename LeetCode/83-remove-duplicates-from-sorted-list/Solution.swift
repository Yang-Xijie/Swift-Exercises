/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }

        var resultHead = head

        var previousNode = head
        var currentNode = head.next
        var lastElement = previousNode.val
        while currentNode != nil {
            if lastElement == currentNode!.val {
                // lastElement不变
                previousNode.next = currentNode!.next
                // previous不变
                currentNode = currentNode!.next
            } else {
                lastElement = currentNode!.val
                previousNode = currentNode!
                currentNode = currentNode!.next
            }
        }

        return resultHead
    }
}
