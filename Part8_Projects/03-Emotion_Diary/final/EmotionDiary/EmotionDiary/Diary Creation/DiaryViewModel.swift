//
//  DiaryViewModel.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import Foundation
import SwiftUI
import Combine



final class DiaryViewModel: ObservableObject {
    
    @Published var diaries: Binding<[MoodDiary]>
    @Published var diary: MoodDiary = MoodDiary(date: "", text: "", mood: .great)
    
    @Published var date: Date = Date()
    @Published var mood: Mood = .great
    @Published var text: String = ""
    @Published var isPresented: Binding<Bool>
    
    var subscriptions = Set<AnyCancellable>()
    
    init(isPresented: Binding<Bool>, diaries: Binding<[MoodDiary]>) {
        self.isPresented = isPresented
        self.diaries = diaries
        
        $date.sink { date in
            //print("---> selected date: \(date)")
            self.update(date: date)
        }.store(in: &subscriptions)
        
        $mood.sink { mood in
            //print("---> selected mood: \(mood)")
            self.update(mood: mood)
        }.store(in: &subscriptions)
    
        $text.sink { text in
            //print("---> text: \(text)")
            self.update(text: text)
        }.store(in: &subscriptions)
    }
    
    private func update(date: Date) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        self.diary.date = formatter.string(from: date)
    }
    
    private func update(mood: Mood) {
        self.diary.mood = mood
    }
    
    private func update(text: String) {
        self.diary.text = text
    }
    
    
    func completed() {
        guard diary.date.isEmpty == false else { return }
        // ✅ 저장하고
        diaries.wrappedValue.append(diary)
        
        // ✅ 닫고
        isPresented.wrappedValue = false
    }
    
}
