// 输入描述:
// 输入有两行, 第一行 n
// 第二行是 n 个字符串, 字符串之间用空格隔开
// 输出描述:
// 输出一行排序后的字符串, 空格隔开, 无结尾空格
// 输入例子1:
// 5
// c d a bb e
// 输出例子1:
// a bb c d e

_ = readLine()!
let line: String = readLine()!
let strings: [String] = line.split(separator: " ").map({ String($0) })
let sortedStrings = strings.sorted(by: { $0 < $1 })
print(sortedStrings.joined(separator: " "))
