// 输入描述:
// 输入包括两个正整数 a, b, 输入数据有多组, 如果输入为 0 0 则结束输入
// 输出描述:
// 输出 a + b 的结果
// 输入例子1:
// 1 5
// 10 20
// 0 0
// 输出例子1:
// 6
// 30

while let line: String = readLine() {
    if line != "0 0" {
        let data: [Int] = line.split(separator: " ").map({ Int($0)! })
        let result = data.first! + data.last!
        print(result)
    } else {
        break
    }
}
