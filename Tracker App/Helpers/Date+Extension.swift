//
//  Date+Extension.swift
//  Tracker App
//
//  Created by Furkan İSLAM on 6.07.2024.
//

import SwiftUI

extension Date {
    var startOfMonth : Date {
        let calendar = Calendar.current
        let componets = calendar.dateComponents([.year, .month], from: self)
        
        return calendar.date(from: componets) ?? self
    }
    
    var endOfMonth: Date {
        let calendar = Calendar.current
        
        return calendar.date(byAdding: .init(month: 1, minute: -1), to: self.startOfMonth) ?? self
    }
}
