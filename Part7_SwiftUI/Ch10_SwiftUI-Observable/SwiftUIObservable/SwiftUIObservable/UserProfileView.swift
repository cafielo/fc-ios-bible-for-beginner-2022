//
//  UserProfileView.swift
//  SwiftUIObservable
//
//  Created by joonwon lee on 8/28/24.
//

import SwiftUI

// MARK: - Observable을 사용하는 뷰
struct UserProfileView: View {
    var profile: UserProfile

    var body: some View {
        VStack {
            Text("Name: \(profile.name)")
            Text("Age: \(profile.age)")
            Button("Happy Birthday!") {
                profile.haveBirthday()
            }
        }
    }
}

#Preview {
    UserProfileView(profile: UserProfile(name: "Jane", age: 15))
}
