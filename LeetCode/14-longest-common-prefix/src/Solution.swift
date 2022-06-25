extension String {
    subscript(_ i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        } else if strs.count == 1 {
            return strs.first!
        } else {
            var prefix = strs.first!
            for i in 1 ..< strs.count {
                prefix = self.findPrefixOfTwoString(prefix, strs[i])
            }
            return prefix
        }
    }

    func findPrefixOfTwoString(_ stra: String, _ strb: String) -> String {
        var prefix: String = ""
        for i in 0 ..< min(stra.count, strb.count) {
            if stra[i] == strb[i] {
                prefix.append(stra[i])
            } else {
                break
            }
        }
        return prefix
    }
}
