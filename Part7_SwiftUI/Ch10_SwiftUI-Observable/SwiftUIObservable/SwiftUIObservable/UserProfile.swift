//
//  UserProfile.swift
//  SwiftUIObservable
//
//  Created by joonwon lee on 8/28/24.
//

import Foundation

// MARK: - Observable 매크로 접근 방식 (iOS 17+)
@Observable class UserProfile {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func haveBirthday() {
        age += 1
    }
}
