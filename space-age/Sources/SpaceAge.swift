//Solution goes in Sources

import Foundation

class SpaceAge {
    let seconds: Double
    var onEarth: Double {
        return (seconds / 31557600).roundTo(places: 2)
    }
    var onMercury: Double {
        return (onEarth / 0.2408467).roundTo(places: 2)
    }
    var onVenus: Double {
        return (onEarth / 0.61519726).roundTo(places: 2)
    }
    var onMars: Double {
        return (onEarth / 1.8808158).roundTo(places: 2)
    }
    var onJupiter: Double {
        return (onEarth / 11.862615).roundTo(places: 2)
    }
    var onSaturn: Double {
        return (onEarth / 29.447498).roundTo(places: 2)
    }
    var onUranus: Double {
        return (onEarth / 84.016846).roundTo(places: 2)
    }
    var onNeptune: Double {
        return (onEarth / 164.79132).roundTo(places: 2)
    }
    
    init(_ ageInSeconds: Double) {
        seconds = ageInSeconds
    }
}

extension Double {
    func roundTo(places:Int) -> Double {
          let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
