//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by joonwon lee on 2022/06/12.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
