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
     * @param m int整型 
     * @param n int整型 
     * @return ListNode类
     */
    
    func reverseBetween( _ head: ListNode?,  _ m: Int,  _ n: Int) -> ListNode? {
       guard let head = head else { return nil }
       let headLength = head.length
       guard m != n else { return head }
       
       let rangeHead = head.getNode(atPosition: m - 1)!
       let rangeHeadLeft = head.getNode(atPosition: m - 2)
       let rangeTail = head.getNode(atPosition: n - 1)!
       let rangeTailRight = head.getNode(atPosition: n)
       
       var lastNode = rangeHead
       var currentNode = rangeHead.next!
       for _ in 0 ..< (n - m - 1) {
           let nextNode = currentNode.next!
           currentNode.next = lastNode
           lastNode = currentNode
           currentNode = nextNode
       }
       currentNode.next = lastNode
       
       rangeHeadLeft?.next = rangeTail
       rangeHead.next = rangeTailRight
       
       if m - 1 != 0 {
           return head
       } else {
           return rangeTail
       }
   }
}

extension ListNode {
    func getNode(atPosition m: Int) -> ListNode? {
        if m < 0 {
            return nil
        }
        
        var result: ListNode = self
        for _ in 0 ..< m {
            if result.next == nil {
                return nil
            } else {
                result = result.next!
            }
        }
        return result
    }
    
    var length: Int {
        var result = 1
        var currentNode = self
        while currentNode.next != nil {
            result += 1
            currentNode = currentNode.next!
        }
        return result
    }
}
