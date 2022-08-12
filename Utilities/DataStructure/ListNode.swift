class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
}
