//Solution goes in Sources
import Foundation

func hey(_ message: String) -> String {
    let uppercase = CharacterSet.uppercaseLetters
    let trimMessage = message.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    
    switch trimMessage {
    case let i where i.rangeOfCharacter(from: uppercase) != nil && i.uppercased() == i:
        return "Whoa, chill out!"
    case "":
        return "Fine. Be that way!"
    case let i where i.last == "?":
        return "Sure."
    default:
        return "Whatever."
    }
}
