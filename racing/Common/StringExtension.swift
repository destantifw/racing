//
//  UIApplicationExtension.swift
//  racing
//
//  Created by destanti on 01/08/22.
//

import SwiftUI
import Foundation
func getDate(startDate: String, endDate: String) -> DateRace{
    let df : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MMM/yyyy"
        return formatter
    }()
    
    let nameFormatter = DateFormatter()
    nameFormatter.dateFormat = "MMM"
    
    let _startDate = df.date(from: startDate)
    let _endDate = df.date(from: endDate)
    if let _startDate = _startDate, let _endDate = _endDate {
        let _startDateOnly = Calendar.current.component(.day, from: _startDate)
        let _endDateOnly = Calendar.current.component(.day, from: _endDate)
        
        let _startMonthOnly = nameFormatter.string(from: _startDate)
        
        let _endMonthOnly = nameFormatter.string(from: _endDate)
        
        let _rangeDate = "\(_startDateOnly)-\(_endDateOnly)"
        let _monthDate = (_startMonthOnly == _endMonthOnly) ? "\(_startMonthOnly)" : "\(_startMonthOnly)-\(_endMonthOnly)"
        
        return DateRace(date: _rangeDate, month: _monthDate)
    } else {
        return  DateRace(date: "", month: "")
    }
    
}

extension String {

    func toDate (dateFormatter: DateFormatter) -> Date? {
        return dateFormatter.date(from: self)
    }
}

