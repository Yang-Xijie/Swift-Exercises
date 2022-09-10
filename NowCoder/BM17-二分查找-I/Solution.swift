public class Solution {
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     *
     * 
     * @param nums int整型一维数组 
     * @param target int整型 
     * @return int整型
     */
    func search ( _ nums: [Int],  _ target: Int) -> Int {
        return localSearch(nums, target, 0, nums.count)
    }
    
    func localSearch(_ nums: [Int], _ target: Int, _ leftPosition: Int, _ rightPosition: Int) -> Int {
        if nums.count == 0 { 
            return -1
        } else if target < nums.first! || nums.last! < target {
            return -1
        } else if leftPosition == rightPosition {
            if target == nums[leftPosition] {
                return leftPosition
            } else {
                return -1
            }
        } else if leftPosition + 1 == rightPosition {
            if nums[leftPosition] == target {
                return leftPosition
            } else if nums[rightPosition] == target {
                return rightPosition
            } else {
                return -1
            }
        } else {
            let middlePosition = Int((leftPosition + rightPosition) / 2)
            if nums[middlePosition] == target {
                return middlePosition
            } else if nums[middlePosition] < target {
                return localSearch(nums, target, middlePosition, rightPosition)
            } else if nums[middlePosition] > target {
                return localSearch(nums, target, leftPosition, middlePosition)
            } else {
                fatalError()
            }
        }
    }
}
