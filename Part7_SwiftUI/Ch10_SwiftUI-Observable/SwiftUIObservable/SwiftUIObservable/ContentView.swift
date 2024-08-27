//
//  ContentView.swift
//  SwiftUIObservable
//
//  Created by joonwon lee on 8/28/24.
//

import SwiftUI

struct ContentView: View {
    private var profileOO = UserProfileOO(name: "John", age: 30)
    private var profile = UserProfile(name: "Jane", age: 28)

    var body: some View {
        VStack {
            Text("ObservableObject Example:")
            UserProfileViewOO(profile: profileOO)

            Divider()

            Text("Observable Example:")
            UserProfileView(profile: profile)
        }
    }
}

#Preview {
    ContentView()
}
