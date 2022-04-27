//
//  OnboardingMessage.swift
//  NRCOnboarding
//
//  Created by joonwon lee on 2022/04/23.
//

import Foundation

struct OnboardingMessage {
    let imageName: String
    let title: String
    let description: String
}

extension OnboardingMessage {
    static let messages: [OnboardingMessage] = [
        OnboardingMessage(imageName: "img_nike_nrc", title: "", description: "New to the club? Join now and get started.\n Alread running with nike? Log in or join now and we'll show every run you've done with us."),
        OnboardingMessage(imageName: "img_nike_solo_run", title: "METRICS MATTER", description: "Every run counts--even the ones you might want to forget. Track your stat to see your progress every step of the way."),
        OnboardingMessage(imageName: "img_nike_group_run", title: "MUSIC MOVES YOU", description: "You're first race, last mile, or push out the door whatever your pace, distance or need, we've got the playlist to match"),
    ]
    
}

