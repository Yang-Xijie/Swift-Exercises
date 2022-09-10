public class Solution {
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     * 
     * @param s string字符串 
     * @param n int整型 
     * @return string字符串
     */
    func trans ( _ s: String,  _ n: Int) -> String {
        if s == "" { return "" }
        
        var words: [String] = []
        var currentWord = ""
        var lastCharacter = Character("!")
        for c in s {
            if lastCharacter == Character("!") { // 第一个字符
                currentWord += String(c)
            } else {
                if (lastCharacter.isWhitespace && !c.isWhitespace) || (!lastCharacter.isWhitespace && c.isWhitespace) {
                    words.append(currentWord)
                    currentWord = ""
                    currentWord += String(c)
                } else {
                    currentWord += String(c)
                }
            }
            lastCharacter = c
        }
        words.append(currentWord)
        
        return words.reversed().map({ $0.changeCase() }).joined(separator: "")
    }
}

extension String {
    func changeCase() -> String{
        return self.map({
            String(case_converter[$0]!)
        }).joined(separator: "")
    }
}

let case_converter: [Character: Character] = [
    "a": "A", "b": "B", "c": "C", "d": "D", "e": "E", "f": "F", "g": "G",
    "h": "H", "i": "I", "j": "J", "k": "K", "l": "L", "m": "M", "n": "N", 
    "o": "O", "p": "P", "q": "Q", "r": "R", "s": "S", "t": "T", 
    "u": "U", "v": "V", "w": "W", "x": "X", "y": "Y", "z": "Z",
    "A": "a", "B": "b", "C": "c", "D": "d", "E": "e", "F": "f", "G": "g",
    "H": "h", "I": "i", "J": "j", "K": "k", "L": "l", "M": "m", "N": "n", 
    "O": "o", "P": "p", "Q": "q", "R": "r", "S": "s", "T": "t", 
    "U": "u", "V": "v", "W": "w", "X": "x", "Y": "y", "Z": "z",
    " ": " "
]
