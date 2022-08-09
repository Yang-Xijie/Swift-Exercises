extension String {
    subscript(_ i: Int) -> Character {
        if i >= self.count || i < 0 {
            return "0"
        } else {
            return self[index(startIndex, offsetBy: i)]
        }
    }
}

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var currentIndex = 0
        var result = ""

        var carry: Character = "0"
        while currentIndex < a.count || currentIndex < b.count {
            let (bitCarry, bitSum) = self.bitAdd(a[a.count - 1 - currentIndex], b[b.count - 1 - currentIndex], carry)
            result.insert(bitSum, at: result.startIndex)
            carry = bitCarry
            currentIndex += 1
        }
        if carry == "1" {
            result.insert("1", at: result.startIndex)
        }
        
        return result
    }

    /// return: carry sum
    func bitAdd(_ a1: Character, _ a2: Character, _ a3: Character) -> (Character, Character) {
        if a1 == "0", a2 == "0", a3 == "0" {
            return ("0", "0")
        } else if (a1 == "1" && a2 == "0" && a3 == "0") || (a1 == "0" && a2 == "1" && a3 == "0") || (a1 == "0" && a2 == "0" && a3 == "1") {
            return ("0", "1")
        } else if (a1 == "1" && a2 == "1" && a3 == "0") || (a1 == "1" && a2 == "0" && a3 == "1") || (a1 == "0" && a2 == "1" && a3 == "1") {
            return ("1", "0")
        } else if a1 == "1", a2 == "1", a3 == "1" {
            return ("1", "1")
        } else {
            fatalError()
        }
    }
}