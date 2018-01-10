//Solution goes in Sources

//class Hamming {
//    static func compute(_ strand1: String, against strand2: String) -> Int? {
//        if strand1.count == strand2.count {
//            var distance = 0
//            var sequence1 = strand1
//            var sequence2 = strand2
//            while sequence1.count > 0 {
//                let nucleicAcid = sequence1.remove(at: sequence1.startIndex)
//                let mutation = sequence2.remove(at: sequence2.startIndex)
//                if nucleicAcid != mutation {
//                    distance += 1
//                }
//            }
//            return distance
//        } else { return nil }
//    }
//}

func compute(_ source: String, against:String) -> Int? {
    return source.count == against.count ? zip(source, against).filter{$0 != $1}.count : nil
}
