//
//  Calendar Extensions.swift
//
//
//  Created by Matt Sullivan on 27/04/2024.
//

import Foundation

extension Calendar {
    
    // Calculate number of days between 2 dates
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day!
    }
    
}
