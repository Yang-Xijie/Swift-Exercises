extension String {
    subscript(_ i: Int) -> Character {
        get {
            return self[index(self.startIndex, offsetBy: i)]
        }
        set {
            let index = self.index(self.startIndex, offsetBy: i)
            self.replaceSubrange(index ... index, with: [newValue])
        }
    }
}
