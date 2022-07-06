//
//  Time.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2022/6/16.
//

import Foundation

class RETime {
    static let shared: RETime = RETime()
    func testTime() {
        // GMT：格林威治标准时间
        // UTC：全球标准时间

        let today = Date()
        print("today = \(today)")
        print("today time interval = \(today.timeIntervalSince1970)")

        let zone = TimeZone.current
        print("zone = \(zone)")

        let interval = zone.secondsFromGMT()
        print("interval = \(interval)")
        print("current time zone = \(interval/3600)")

        let timeInterval: TimeInterval = TimeInterval(interval)
        let now = today.addingTimeInterval(timeInterval)
        print("now = \(now)")

        let d = Date(timeIntervalSinceNow: 60)
        print(d)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        let time = dateFormatter.string(from: today)
        print(time)

        let result = d.compare(today)
        switch result {
        case .orderedAscending:
            print("")
        case .orderedSame:
            print("")
        case .orderedDescending:
            print("")
        }

    }
}
