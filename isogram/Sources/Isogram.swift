//Solution goes in Sources
import Foundation

class Isogram {
    class func isIsogram(_ word: String) -> Bool {
        var used = [Character]()
        let nonLetters = NSCharacterSet.alphanumerics.inverted
        let lettersOnly = word.components(separatedBy: nonLetters).joined().lowercased()
        for letter in lettersOnly {
            if used.contains(letter) {
                return false
            } else {
                used.append(letter)
            }
        }
        return true
    }
}
