// 输入描述:
// 输入的第一行包括一个正整数 t, 表示数据组数.
// 接下来 t 行, 每行一组数据.
// 每行的第一个整数为整数的个数 n.
// 接下来 n 个正整数, 即需要求和的每个正整数.
// 输出描述:
// 每组数据输出求和的结果
// 输入例子1:
// 2
// 4 1 2 3 4
// 5 1 2 3 4 5
// 输出例子1:
// 10
// 15

extension String {
    var data: [Int] {
        var result: [Int] = self.split(separator: " ").map({ Int($0)! })
        result.remove(at: 0)
        return result
    }
}

let groupNum: Int = Int(readLine()!)!
for _ in 0 ..< groupNum {
    var data: [Int] = readLine()!.data
    let result: Int = data.reduce(0, { $0 + $1 })
    print(result)
}
