//Solution goes in Sources
struct Year {
    let calendarYear: Int
    
    var isLeapYear: Bool {
        guard calendarYear % 4 == 0 else { return false }
        guard calendarYear % 100 == 0 else { return true }
        guard calendarYear % 400 == 0 else { return false }
        
        return true
    }
}
