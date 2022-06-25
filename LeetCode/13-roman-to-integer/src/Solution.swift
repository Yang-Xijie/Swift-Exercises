class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum: Int = 0

        var previous: Int = 0
        for char in s {
            if let current = Self.dict[char] {
                if current > previous {
                    sum -= previous
                } else {
                    sum += previous
                }
                previous = current
            } else { fatalError() }
        }

        sum += previous
        return sum
    }

    static let dict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
}