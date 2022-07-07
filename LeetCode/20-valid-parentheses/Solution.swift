class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for character in s {
            switch character {
            case "(", "[", "{":
                stack.append(character)
            case ")":
                guard let last = stack.last else { return false }
                if last == "(" {
                    stack.remove(at: stack.index(stack.endIndex, offsetBy: -1))
                } else {
                    return false
                }
            case "]":
                guard let last = stack.last else { return false }
                if last == "[" {
                    stack.remove(at: stack.index(stack.endIndex, offsetBy: -1))
                } else {
                    return false
                }
            case "}":
                guard let last = stack.last else { return false }
                if last == "{" {
                    stack.remove(at: stack.index(stack.endIndex, offsetBy: -1))
                } else {
                    return false
                }
            default:
                fatalError()
            }
        }
        if stack.count == 0 {
            return true
        } else {
            return false
        }
    }
}
