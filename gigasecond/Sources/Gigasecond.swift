import Foundation

class Gigasecond {
    private var date: Date?
    private let formatter = DateFormatter()
    public var description = ""
    
    init?(from: String) {
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        if let startDate = formatter.date(from: from) {
            date = startDate.addingTimeInterval(TimeInterval(pow(10.0, 9)))
            description = formatter.string(from: date!)
        }
    }
}
