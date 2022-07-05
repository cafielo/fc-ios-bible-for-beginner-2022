//
//  MonthlyIDGenerator.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/05.
//

import Foundation

final class MonthlyIDGenerator {
    func monthyID(with diary: MoodDiary) -> String {
        let dateString = diary.date
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        guard let date = formatter.date(from: dateString) else { return "" }
        
        let calendar = Calendar(identifier: .gregorian)
        let dateComponents = calendar.dateComponents([.year, .month], from: date)
        
        return "\(dateComponents.year!)-\(dateComponents.month!)"
    }
}
