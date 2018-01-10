//Solution goes in Sources
import Foundation

struct Grains {
    static func square(_ square: Int) throws -> Double {
         guard square < 65 else {
            throw GrainsError.inputTooHigh("Input[\(square)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard square > 0 else {
            throw GrainsError.inputTooLow("Input[\(square)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        return pow(2, Double(square - 1))
    }
    
    static let total: Double = 18_446_744_073_709_551_615
    
    enum GrainsError: Error {
        case inputTooHigh(_: String)
        case inputTooLow(_: String)
    }
}


