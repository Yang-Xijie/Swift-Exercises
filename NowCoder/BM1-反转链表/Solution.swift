/**
 * public class ListNode {
 *   public var val: Int
 *   public var next: ListNode?
 *   public init(_ val: Int = 0, _ next: ListNode? = nil) {
 *     self.val = val
 *     self.next = next
 *   }
 * }
 */

public class Solution {
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     * 
     * @param head ListNode类 
     * @return ListNode类
     */
    func ReverseList ( _ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        
        var lastNode: ListNode? = nil
        var currentNode: ListNode = head
        while currentNode.next != nil {
            var nextNode = currentNode.next!
            currentNode.next = lastNode
            lastNode = currentNode
            currentNode = nextNode
        }
        currentNode.next = lastNode
        return currentNode
    }
}
