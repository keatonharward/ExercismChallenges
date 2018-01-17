//Solution goes in Sources
import Foundation

extension Array {
    func accumulate<U>(_ operation: (Element) -> U) -> [U] {
        var newArray: [U] = []
        for object in self {
            newArray.append(operation(object))
        }
        return newArray
    }
}
