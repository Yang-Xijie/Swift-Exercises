class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var result: ListNode? = nil
        var resultTail: ListNode? = result
        
        var node1 = list1
        var node2 = list2
        while node1 != nil, node2 != nil {
            if node1!.val > node2!.val {
                // 添加node2到resultTail
                if result == nil {
                    result = ListNode(node2!.val)
                    resultTail = result
                    node2 = node2!.next
                } else {
                    resultTail!.next = ListNode(node2!.val)
                    resultTail = resultTail!.next
                    node2 = node2!.next
                }
            } else {
                // 添加node1到resultTail
                if result == nil {
                    result = ListNode(node1!.val)
                    resultTail = result
                    node1 = node1!.next
                } else {
                    resultTail!.next = ListNode(node1!.val)
                    resultTail = resultTail!.next
                    node1 = node1!.next
                }
            }
        }
        while node1 != nil {
            if result == nil {
                result = ListNode(node1!.val)
                resultTail = result
                node1 = node1!.next
            } else {
                resultTail!.next = ListNode(node1!.val)
                resultTail = resultTail!.next
                node1 = node1!.next
            }
        }
        while node2 != nil {
            if result == nil {
                result = ListNode(node2!.val)
                resultTail = result
                node2 = node2!.next
            } else {
                resultTail!.next = ListNode(node2!.val)
                resultTail = resultTail!.next
                node2 = node2!.next
            }
        }
        return result
    }
}
