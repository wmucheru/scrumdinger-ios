//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by William Mucheru on 15/08/2021.
//

import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees:[String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees:[String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(
                title: "Design",
                attendees: ["Duane", "William", "Das"],
                lengthInMinutes: 30,
                color: Color("Design")
            ),
            DailyScrum(
                title: "Database design",
                attendees: ["William", "Duane"],
                lengthInMinutes: 45,
                color: Color("Database design"))
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
