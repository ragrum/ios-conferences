//
// Created by José Ríos on 26/02/22.
//

import Foundation

class Conference: Codable,Identifiable {
    var name: String
    var location: String
    var start: Date
    var end: Date?
    var link: String

    init() {
        name = "Conference Name"
        location = "Location"
        start = Date()
        end = Date()
        link = "https://www.google.com"
    }

    func textDates() -> String {
        var result = start.dateToString()

        if let end = end {
            result = "\(result) - \(end.dateToString())"
        }

        return result
    }
}

