class Solution {
    var resultDict: [Int: Int] = [1: 1, 2: 2]

    func climbStairs(_ n: Int) -> Int {
        if n == 1 || n == 2 { return resultDict[n]! }

        for i in 3 ... n {
            let result_i = resultDict[i - 1]! + resultDict[i - 2]!
            resultDict[i] = result_i
        }
        return resultDict[n]!
    }
}
