class Solution {
    var resultDict: [Int: Int] = [1: 1, 2: 2, 3: 3]

    func climbStairs(_ n: Int) -> Int {
        if resultDict.keys.contains(n) {
            return resultDict[n]!
        } else {
            for i in 3 ... n {
                let result_i = climbStairs(i - 1) + climbStairs(i - 2)
                resultDict[i] = result_i
            } 
            return resultDict[n]!
        }
    }
}
