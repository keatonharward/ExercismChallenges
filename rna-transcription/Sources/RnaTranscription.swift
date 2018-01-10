//Solution goes in Sources

class Nucleotide {
    var sequence: String
    
    init(_ DNA: String) {
        sequence = DNA
    }
    
    func complementOfDNA() throws -> String {
        var complementSequence = ""
        for character in sequence {
            switch character {
            case "G": complementSequence.append("C")
            case "C": complementSequence.append("G")
            case "T": complementSequence.append("A")
            case "A": complementSequence.append("U")
            default: throw TranscriptionError.invalidNucleotide
            }
        }
        return complementSequence
    }
}

enum TranscriptionError: Error {
    case invalidNucleotide
}
