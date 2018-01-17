//Solution goes in Sources
import Foundation
class DNA {
    let dict: [String: Int]
    
    init?(strand: String) {
        var counts = ["T": 0, "A": 0, "C": 0, "G": 0]
        for character in strand {
            switch character {
            case Character("T"):
                counts["T"]! += 1
            case Character("A"):
                counts["A"]! += 1
            case Character("C"):
                counts["C"]! += 1
            case Character("G"):
                counts["G"]! += 1
            default:
                return nil
            }
        }
        dict = counts
    }
    
    func count(_ nucleotide: String) -> Int {
        return dict[nucleotide]!
    }
    
    func counts() -> [String:Int] {
        return dict
    }
}
