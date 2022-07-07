# Swift LeetCode 练习

## LeetCode

### 开始新题目

- 在`LeetCode/`下新建`<problem_id>-<problem_name>`文件夹
    - 新建`README.md`简述题目并说明算法思路
- 在其中新建`src`文件夹
- 新建`main.swift`
    - 主要用于编写测试样例 `let result = Solution().function(...); assert(result == ...)`
- 新建`Solution.swift`
    - 编写`Solution`类
    - 开始编写时从LeetCode复制函数声明
    - 提交时复制该文件内容粘贴至LeetCode编辑器

### 运行

- 修改`Makefile`中的`Q`为LeetCode题目编号 命令行执行`make`
- 或命令行执行`Q=<problem_id> make`

注：做算法题代码出问题并不推荐使用调试 自己多思考

## Swift

### 文档

<https://www.swift.org/documentation/>

- [The Swift Programming Language Book](https://www.swift.org/documentation/)
    - [A Swift Tour](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html)
    - [Language Guide](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- [Resources at Apple](https://developer.apple.com/swift/resources/)
    - [Swift Standard Library](https://developer.apple.com/documentation/swift/swift-standard-library)
- Packages
    - [API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)
    - [DocC](https://www.swift.org/documentation/docc/)

### 安装

- macOS
    - App Store下载安装Xcode
