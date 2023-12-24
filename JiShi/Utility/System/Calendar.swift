//
//  Calendar.swift
//  JiShi
//
//  Created by yizhou on 24/12/2023.
//

import Foundation
import EventKit

class CalendarHelper {
    private var store = EKEventStore()
    
    func createEvent(
        title: String, startTime: Int64, endTime: Int64, location: String, content: String
    ) throws {
        let event = EKEvent(eventStore: store)
        event.title = title
        event.startDate = Date(timeIntervalSince1970: TimeInterval(integerLiteral: startTime))
        event.endDate = Date(timeIntervalSince1970: TimeInterval(integerLiteral: endTime))
        event.location = location
        event.addAlarm(EKAlarm(relativeOffset: -60.0 * 15.0))
        event.calendar = store.defaultCalendarForNewEvents
                
        try store.save(event, span: .thisEvent, commit: true)
    }
    
    func checkEvent(
        title: String, startTime: Int64, endTime: Int64
    ) throws -> Bool {
        let start = Date(timeIntervalSince1970: TimeInterval(integerLiteral: startTime))
        let end = Date(timeIntervalSince1970: TimeInterval(integerLiteral: endTime))
        let predicate = store.predicateForEvents(withStart: start, end: end, calendars: [store.defaultCalendarForNewEvents!])
        let events = store.events(matching: predicate)
        for event in events {
            if event.title == title {
                return true
            }
        }
        return false
    }
}
