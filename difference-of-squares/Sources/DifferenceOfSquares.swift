//Solution goes in Sources
import Foundation

class Squares {
    let squareOfSums: Int
    var sumOfSquares = 0
    let differenceOfSquares: Int
    
    init(_ iterator: Int) {
        var sum = 0
        for number in 1...iterator {
            sum += number
            let numberSquared = Int(pow(Double(number), 2))
            sumOfSquares += numberSquared
        }
        squareOfSums = Int(pow(Double(sum), 2))
        differenceOfSquares = squareOfSums - sumOfSquares
    }
}
