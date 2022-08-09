class Solution {
    func mySqrt(_ x: Int) -> Int {
        let bitCount = String(x, radix: 2).count

        var result = 0
        for i in (1 << ((bitCount - 1) / 2)) ... (1 << ((bitCount - 1) / 2 + 1)) {
            if i * i < x {
                result = i
            } else if i * i == x {
                return i
            } else {
                return result
            }
        }

        fatalError()
    }
}
