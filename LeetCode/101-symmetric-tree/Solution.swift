/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        } else {
            return isSymmetricTree(root!.left, root!.right)
        }
    }

    func isSymmetricTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil, q == nil {
            return true
        } else if (p == nil && q != nil) || (p != nil && q == nil) {
            return false
        } else if p!.val != q!.val {
            return false
        } else if p!.val == q!.val {
            return isSymmetricTree(p!.left, q!.right) && isSymmetricTree(p!.right, q!.left)
        } else {
            fatalError()
        }
    }
}
