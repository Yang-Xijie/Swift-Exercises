import Foundation

extension String {
    /// Complexity: O(self.count)
    subscript(_ i: Int) -> Character {
        /// Complexity: O(i)
        get {
            let index = self.index(self.startIndex, offsetBy: i)
            return self[index]
        }
        /// Complexity: O(self.count+i)
        set {
            let index = self.index(self.startIndex, offsetBy: i)
            self.replaceSubrange(index ... index, with: [newValue])
        }
    }
}
