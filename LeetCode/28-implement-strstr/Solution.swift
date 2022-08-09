extension String {
    subscript(_ i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if let range = haystack.range(of: needle) {
            let substring = haystack[..<range.lowerBound]
            return substring.count
        } else {
            return -1
        }
    }
}
