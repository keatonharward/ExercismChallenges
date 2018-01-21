//Solution goes in Sources

class GradeSchool {
    var roster: [Int:[String]] = [:]
    var sortedRoster: [Int:[String]] {
        return Dictionary(uniqueKeysWithValues: roster.map { ($0.0, $0.1.sorted())})
    }
    
    func addStudent(_ name: String, grade: Int) {
        roster[grade] = roster[grade] == nil ? [name] : roster[grade]! + [name]
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
