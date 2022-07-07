let solution = Solution()

let list1 = ListNode(1, ListNode(2, ListNode(4)))
let list2 = ListNode(1, ListNode(3, ListNode(4)))
let answer = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
let result = solution.mergeTwoLists(list1, list2)
// assert(result == answer)

print("21 OK")
