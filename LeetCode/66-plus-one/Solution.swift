class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits

        var indexToPlusOne = result.count - 1
        while true {
            switch result[indexToPlusOne] {

            // 不用进位则+1后直接返回
            case let x where x >= 0 && x <= 8:
                result[indexToPlusOne] = x + 1
                return result

            // 需要进位
            case 9:
                // 当前位+1
                result[indexToPlusOne] = 0

                // 进位
                if indexToPlusOne == 0 { // 进位到加一个数组1
                    result.insert(1, at: 0)
                    return result
                } else {
                    // 上位进位
                    indexToPlusOne -= 1
                }

            // 不存在的情况
            default:
                fatalError()
            }
        }
    }
}