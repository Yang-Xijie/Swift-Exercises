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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        if root.left == nil, root.right == nil {
            return [root.val]
        } else if root.right == nil {
            return inorderTraversal(root.left!) + [root.val]
        } else if root.left == nil {
            return [root.val] + inorderTraversal(root.right!)
        } else {
            return inorderTraversal(root.left!) + [root.val] + inorderTraversal(root.right!)
        }
    }
}
