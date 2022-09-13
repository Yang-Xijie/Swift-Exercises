// 输入描述:
// 输入数据有多组, 每行表示一组输入数据.
// 每行不定有 n 个整数, 空格隔开.
// 输出描述:
// 每组数据输出求和的结果
// 输入例子1:
// 1 2 3
// 4 5
// 0 0 0 0 0
// 输出例子1:
// 6
// 9
// 0

while let line = readLine()  {
    let result: Int = line.split(separator: " ").map({ Int($0)! }).reduce(0, { $0 + $1 })
    print(result)
}
