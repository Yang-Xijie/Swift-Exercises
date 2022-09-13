// 输入描述:
// 输入包括两个正整数 a, b, 输入数据包括多组.
// 输出描述:
// 输出 a + b 的结果
// 输入例子1:
// 1 5
// 10 20
// 输出例子1:
// 6
// 30

while let line = readLine() {
    let data: [Int] = line.split(separator: " ").map({ Int($0)! })
    let result: Int = data.first! + data.last!
    print(result)
}
