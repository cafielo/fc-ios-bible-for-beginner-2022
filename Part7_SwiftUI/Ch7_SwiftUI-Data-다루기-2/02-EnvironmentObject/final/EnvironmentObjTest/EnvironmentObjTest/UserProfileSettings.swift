//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by joonwon lee on 2022/06/13.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
