// 输入描述:
// 输入第一行包括一个数据组数 t
// 接下来每行包括两个正整数 a, b
// 输出描述:
// 输出 a + b 的结果
// 输入例子1:
// 2
// 1 5
// 10 20
// 输出例子1:
// 6
// 30

let groupNum = Int(readLine()!)!
for _ in 0 ..< groupNum {
    let data: [Int] = readLine()!.split(separator: " ").map({ Int($0)! })
    let result: Int = data.first! + data.last!
    print(result)
}
