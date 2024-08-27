//
//  UserProfileOO.swift
//  SwiftUIObservable
//
//  Created by joonwon lee on 8/28/24.
//

import Foundation

// MARK: - ObservableObject 접근 방식 (iOS 13+)
class UserProfileOO: ObservableObject {
    @Published var name: String
    @Published var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func haveBirthday() {
        age += 1
    }
}
