import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        if x < 9 { return true }
        
        var highest_position = 0
        var char = Array(repeating: 0, count: 64)
        var a = x
        while true {
            char[highest_position] = a % 10
            a /= 10
            if a == 0 { break }
            highest_position += 1
        }

        for i in 0 ... ((highest_position + 1) / 2) {
            if char[highest_position - i] != char[i] { return false }
        }

        return true
    }
}