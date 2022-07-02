//
//  ContentView.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import SwiftUI

struct DiaryListView: View {
    var body: some View {
        Text("Hello, Emotion Diary World")
            .font(.system(size: 24, weight: .bold))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListView()
    }
}
