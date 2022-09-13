// 输入描述:
// 输入有多组测试用例, 每组空格隔开两个整数
// 输出描述:
// 对于每组数据输出一行两个整数的和
// 输入例子1:
// 1 1
// 输出例子1:
// 2

let data = readLine()!.split(separator: " ").map({ Int($0)! })
for i in 0 ..< Int(data.count / 2) {
    let result = data[2 * i] + data[2 * i + 1]
    print(result)
}
