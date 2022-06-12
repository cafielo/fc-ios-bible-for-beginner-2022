//
//  ThirdView.swift
//  EnvironmentObjTest
//
//  Created by joonwon lee on 2022/06/13.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Current Age: \(userProfile.age)")
            
            Text("Third View")

            Button {
                userProfile.haveBirthDayParty()
            } label: {
                Text("Having Birthday Party")
            }
        }
        .navigationTitle("Third View")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(UserProfileSettings())
    }
}
