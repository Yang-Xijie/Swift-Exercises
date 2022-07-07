class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var result: ListNode? = nil
        var resultTail: ListNode? = result
        
        if list1 == nil {
            return list2
        }
        if list2 == nil {
            return list1
        }

        var node1 = list1
        var node2 = list2

        if list1!.val > list2!.val {
            result = ListNode(node2!.val)
            resultTail = result
            node2 = node2!.next
        } else {
            result = ListNode(node1!.val)
            resultTail = result
            node1 = node1!.next
        }

        while node1 != nil, node2 != nil {
            if node1!.val > node2!.val {
                // 添加node2到resultTail
                resultTail!.next = ListNode(node2!.val)
                resultTail = resultTail!.next
                node2 = node2!.next
            } else {
                // 添加node1到resultTail
                resultTail!.next = ListNode(node1!.val)
                resultTail = resultTail!.next
                node1 = node1!.next
            }
        }
        while node1 != nil {
            resultTail!.next = ListNode(node1!.val)
            resultTail = resultTail!.next
            node1 = node1!.next
        }
        while node2 != nil {
            resultTail!.next = ListNode(node2!.val)
            resultTail = resultTail!.next
            node2 = node2!.next
        }
        return result
    }
}
