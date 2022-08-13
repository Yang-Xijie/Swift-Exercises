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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        } else if nums.count == 1 {
            return TreeNode(nums.first!)
        } else if nums.count == 2 {
            return TreeNode(nums.last!, TreeNode(nums.first!), nil)
        }

        var result: TreeNode? = nil

        let middleValue = nums[(nums.count - 1) / 2]
        let splitSortedArray = nums.split(separator: middleValue)
        result = TreeNode(middleValue, sortedArrayToBST(Array(splitSortedArray.first!)), sortedArrayToBST(Array(splitSortedArray.last!)))

        return result
    }
}
