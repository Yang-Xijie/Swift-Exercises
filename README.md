# Swift LeetCode 练习

## LeetCode

### 开始新题目

- 新建文件夹
    - 复制`LeetCode/n-template/`并重命名为`LeetCode/<problem_id>-<problem_name>/`
    - **或** 新建`LeetCode/<problem_id>-<problem_name>/`
- 新建文件
    - 新建`README.md`简述题目并说明算法思路
    - 新建`main.swift`
        - 主要用于编写测试样例 `let result = Solution().function(...); assert(result == ...)`
    - 新建`Solution`类的代码文件`Solution.swift`
        - 开始编写时从LeetCode复制类和函数声明
        - 提交时复制该文件内容粘贴至LeetCode编辑器
    - 新建其他类的Swift代码

### 运行

- 修改`Makefile`中的`Q`为LeetCode题目编号 命令行执行`make`
- **或** 命令行执行`Q=<problem_id> make`或`make Q=<problem_id>`

注：做算法题代码出问题并不推荐使用调试 自己多思考

## Swift

### 笔记

- <https://yang-xijie.github.io/DEV/Programming/Swift/notes-basic-grammars/>

### 文档

- <https://www.swift.org/documentation/>
- <https://yang-xijie.github.io/DEV/Programming/Swift/learning-resources/>
