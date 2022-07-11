class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var currentPosition: Int = 0
        for i in 0 ..< nums.count {
            if nums[i] != val {
                nums[currentPosition] = nums[i]
                currentPosition += 1
            }
        }
        return currentPosition
    }
}
