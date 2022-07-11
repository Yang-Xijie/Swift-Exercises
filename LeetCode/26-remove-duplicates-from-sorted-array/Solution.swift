class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 { return 0 }
        if nums.count == 1 { return 1 }

        var lastElement: Int = nums.first!
        var positionToInsertNewElement: Int = 1
        for i in 1 ..< nums.count {
            if nums[i] != lastElement {
                lastElement = nums[i]
                nums[positionToInsertNewElement] = nums[i]
                positionToInsertNewElement += 1
            }
        }
        return positionToInsertNewElement
    }
}
