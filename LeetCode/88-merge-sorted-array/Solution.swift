class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result = Array(repeating: 0, count: m + n)

        var nums1Position = 0
        var nums2Position = 0
        while nums1Position != m, nums2Position != n {
            if nums1[nums1Position] <= nums2[nums2Position] {
                result[nums1Position + nums2Position] = nums1[nums1Position]
                nums1Position += 1
            } else {
                result[nums1Position + nums2Position] = nums2[nums2Position]
                nums2Position += 1
            }
        }

        if nums1Position != m { // nums1 没装完
            for i in nums1Position ..< m {
                result[n + i] = nums1[i]
            }
        } else { // nums2没装完
            for i in nums2Position ..< n {
                result[m + i] = nums2[i]
            }
        }

        nums1 = result
    }
}