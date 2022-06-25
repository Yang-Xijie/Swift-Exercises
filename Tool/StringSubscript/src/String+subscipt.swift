public extension String {
    
    /**
     Enables passing in negative indices to access characters
     starting from the end and going backwards.
     if num is negative, then it is added to the
     length of the string to retrieve the true index.
     */
    func negativeIndex(_ num: Int) -> Int {
        return num < 0 ? num + self.count : num
    }
    
    func strOpenRange(index i: Int) -> Range<String.Index> {
        let j = negativeIndex(i)
        return strOpenRange(j..<(j + 1), checkNegative: false)
    }
    
    func strOpenRange(
        _ range: Range<Int>, checkNegative: Bool = true
    ) -> Range<String.Index> {

        var lower = range.lowerBound
        var upper = range.upperBound

        if checkNegative {
            lower = negativeIndex(lower)
            upper = negativeIndex(upper)
        }
        
        let idx1 = index(self.startIndex, offsetBy: lower)
        let idx2 = index(self.startIndex, offsetBy: upper)
        
        return idx1..<idx2
    }
    
    func strClosedRange(
        _ range: CountableClosedRange<Int>, checkNegative: Bool = true
    ) -> ClosedRange<String.Index> {
        
        var lower = range.lowerBound
        var upper = range.upperBound

        if checkNegative {
            lower = negativeIndex(lower)
            upper = negativeIndex(upper)
        }
        
        let start = self.index(self.startIndex, offsetBy: lower)
        let end = self.index(start, offsetBy: upper - lower)
        
        return start...end
    }
    
    // MARK: - Subscripts
    
    /**
     Gets and sets a character at a given index.
     Negative indices are added to the length so that
     characters can be accessed from the end backwards
     
     Usage: `string[n]`
     */
    subscript(_ i: Int) -> String {
        get {
            return String(self[strOpenRange(index: i)])
        }
        set {
            let range = strOpenRange(index: i)
            replaceSubrange(range, with: newValue)
        }
    }
}