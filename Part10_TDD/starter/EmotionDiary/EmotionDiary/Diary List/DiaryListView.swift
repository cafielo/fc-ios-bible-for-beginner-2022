//
//  ContentView.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import SwiftUI

struct DiaryListView: View {
    
//    ✅ 섹션뷰 고도화
//    - 월 년
//
//    ✅ 네비게이션 뷰 + 뉴버튼
//
//    ✅ 그리드 아이템 탭할때
//    - 상세뷰 이동
    
    
    @StateObject var vm: DiaryListViewModel
    @State var isPresenting: Bool = false
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: layout) {
                        ForEach(vm.keys, id:\.self) { key in
                            Section {
                                let items = vm.dic[key] ?? []
                                let orderedItems = items.sorted(by: { $0.date < $1.date })
                                ForEach(orderedItems) { item in
                                    NavigationLink {
                                        let vm = DiaryDetailsViewModel(
                                            diaries: $vm.list,
                                            diary: item
                                        )
                                        DiaryDetailsView(vm: vm)
                                    } label: {
                                        MoodDiaryCell(diary: item)
                                            .frame(height: 50)
                                    }
                                }
                            } header: {
                                Text(formattedSectionTitle(key))
                                    .font(.system(size: 30, weight: .black))
                            }
                            .frame(height: 60)
                            .padding()
                            
                            
                        }
                    }
                }
                
                HStack {
                    Button {
                        print("New Button Tapped")
                        isPresenting = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                    }
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(40)
                }
            }
            .navigationTitle("Emotion Diary")
        }
        .sheet(isPresented: $isPresenting) {
            let vm = DiaryViewModel(isPresented: $isPresenting, diaries: $vm.list)
            DiaryDateInputView(vm: vm)
        }
        .onAppear {
            vm.fetch()
        }
    }
}

extension DiaryListView {
    // "2022-4" -> "April 2022" or "4월 2022"
    private func formattedSectionTitle(_ id: String) -> String {
        let dateComponents = id
            .components(separatedBy: "-")
            .compactMap{ Int($0) }
        guard let year = dateComponents.first, let month = dateComponents.last else {
            return id
        }
        
        
        let calendar = Calendar(identifier: .gregorian)
        let dateComponent = DateComponents(calendar: calendar, year: year, month: month)
        let date = dateComponent.date!
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListView(vm: DiaryListViewModel(storage: MoodDiaryStorage()))
    }
}
