//Solution goes in Sources

class Raindrops {
    let sounds: String
    init(_ number: Int) {
        let factors = [3: "Pling", 5: "Plang", 7: "Plong"]
        let result = factors.keys.sorted().flatMap { (key) in
            number % key == 0 ? factors[key] : nil
        }
        sounds = result.isEmpty ? "\(number)" : result.joined()
    }
}
