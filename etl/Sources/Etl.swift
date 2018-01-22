//Solution goes in Sources

func transform(_ old: [Int:[String]]) -> [String : Int] {
    var newScores = [String: Int]()
    for score in old.keys {
        for letter in old[score]! {
            newScores[letter.lowercased()] = score
        }
    }
    return newScores
}
