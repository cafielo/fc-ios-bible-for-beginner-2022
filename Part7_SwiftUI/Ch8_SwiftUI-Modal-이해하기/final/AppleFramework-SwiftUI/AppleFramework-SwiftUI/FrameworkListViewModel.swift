//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/06/15.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false {
        didSet {
            print("--> isShowingDetail \(isShowingDetail)")
        }
    }
    @Published var selectedItem: AppleFramework?
}
