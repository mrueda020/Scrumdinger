//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Miguel on 10/05/24.
//

import Foundation

struct DailyScrum:Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme:Theme
    
    init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
        
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"].map({ attendeeName in
                       Attendee(name: attendeeName)
                   }),
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"].map({ attendeeName in
                       Attendee(name: attendeeName)
                   }),
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"].map({ attendeeName in
                       Attendee(name: attendeeName)
                   }),
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
