//
//  DiaryDetailsViewModel.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import Foundation
import SwiftUI


final class DiaryDetailsViewModel: ObservableObject {
    @Published var diaries: Binding<[MoodDiary]>
    @Published var diary: MoodDiary
    
    init(diaries: Binding<[MoodDiary]>, diary: MoodDiary) {
        self.diaries = diaries
        self.diary = diary
    }
    
    func delete() {
        diaries.wrappedValue = diaries.wrappedValue.filter { $0.id != diary.id }
    }
}
