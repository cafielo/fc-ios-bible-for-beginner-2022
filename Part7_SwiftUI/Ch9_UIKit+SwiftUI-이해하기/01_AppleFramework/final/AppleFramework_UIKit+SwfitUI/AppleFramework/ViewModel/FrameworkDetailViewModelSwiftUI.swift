//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/06/15.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModelSwiftUI: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
