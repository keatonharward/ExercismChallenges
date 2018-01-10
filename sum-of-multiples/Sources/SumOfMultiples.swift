//Solution goes in Sources

class SumOfMultiples {
    static func toLimit(_ max: Int, inMultiples: [Int] = []) -> Int {
        var sum: [Int] = []
        for number in 0...max {
            for multiple in inMultiples {
                if number < max && multiple > 0 {
                    if number % multiple == 0 && multiple > 0 {
                        if !sum.contains(number) {
                            sum.append(number)
                        }
                    }
                }
            }
        }
        return sum.reduce(0, +)
    }
}

