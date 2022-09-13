// 输入描述:
// 输入数据包括多组.
// 每组数据一行, 每行的第一个整数为整数的个数 n, n 为 0 的时候结束输入.
// 接下来 n 个正整数, 即需要求和的每个正整数.
// 输出描述:
// 每组数据输出求和的结果
// 输入例子1:
// 4 1 2 3 4
// 5 1 2 3 4 5
// 0
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

while let line = readLine() {
    if line.first! == "0" {
        break
    } else {
        let data: [Int] = line.data
        let result: Int = data.reduce(0, { $0 + $1 })
        print(result)
    }
}
