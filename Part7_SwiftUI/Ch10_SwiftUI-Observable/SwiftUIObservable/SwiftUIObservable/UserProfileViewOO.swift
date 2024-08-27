//
//  UserProfileViewOO.swift
//  SwiftUIObservable
//
//  Created by joonwon lee on 8/28/24.
//

import SwiftUI

// MARK: - ObservableObject를 사용하는 뷰
struct UserProfileViewOO: View {
    @StateObject var profile: UserProfileOO

    var body: some View {
        VStack {
            Text("Name :\(profile.name)")
            Text("Age: \(profile.age)")
            Button("Happy Birthday!") {
                profile.haveBirthday()
            }
        }
    }
}

#Preview {
    UserProfileViewOO(profile: UserProfileOO(name: "John Doe", age: 30))
}
