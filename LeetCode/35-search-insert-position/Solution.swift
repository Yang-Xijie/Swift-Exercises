class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var indexLeft = 0
        var indexRight = nums.count - 1

        while true {
            if indexLeft == indexRight {
                if nums[indexLeft] >= target {
                    return indexLeft
                } else {
                    return indexLeft + 1    
                }
            } else if indexLeft + 1 == indexRight {
                if nums[indexLeft] >= target {
                    return indexLeft
                } else if nums[indexRight] >= target {
                    return indexRight
                } else {
                    return indexRight + 1
                }
            }

            let indexMiddle = (indexLeft + indexRight) / 2
            if nums[indexMiddle] == target {
                return indexMiddle
            } else {
                if nums[indexMiddle] < target {
                    indexLeft = indexMiddle + 1
                } else {
                    indexRight = indexMiddle - 1
                }
            }
        }
    }
}
