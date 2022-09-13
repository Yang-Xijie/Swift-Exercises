// 多个测试用例, 每个测试用例一行.
// 每行通过空格隔开, 有 n 个字符
// 输出描述:
// 对于每组测试用例, 输出一行排序过的字符串, 每个字符串通过空格隔开.
// 输入例子1:
// a c bb
// f dddd
// nowcoder
// 输出例子1:
// a bb c
// dddd f
// nowcoder

while let line = readLine() {
    let strings = line.split(separator: " ").map({ String($0) })
    let sortedStrings = strings.sorted(by: { $0 < $1 })
    print(sortedStrings.joined(separator: " "))
}
