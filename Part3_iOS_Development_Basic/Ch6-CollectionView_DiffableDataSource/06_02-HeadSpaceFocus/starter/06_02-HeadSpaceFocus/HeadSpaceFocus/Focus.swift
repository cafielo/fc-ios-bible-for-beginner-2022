//
//  Focus.swift
//  HeadSpaceFocus
//
//  Created by joonwon lee on 2022/04/24.
//

import Foundation

struct Focus: Hashable {
    let title: String
    let description: String
    let imageName: String
}

extension Focus {
    static let list: [Focus] = [
        Focus(title: "Kessonga's Guide to Focus", description: "Gain a mindful approach to focus and attention.", imageName: "sun.max.fill"),
        Focus(title: "Quick Focus Resets", description: "Short exercises for getting back into focus", imageName: "sparkles"),
        Focus(title: "Focus music", description: "Find and keep focus with music from world-renowned artists. Get in the zone with techno trailblazer Monika Kruse.", imageName: "cloud.rain.fill"),
        Focus(title: "Soundscapes", description: "3D recording from the world's loveliest places", imageName: "cloud.sun.rain.fill"),
        Focus(title: "For Work", description: "Build and regain focus for a productive workday.", imageName: "thermometer.snowflake"),
        Focus(title: "For Study", description: "Overcome distraction and stat on topic.", imageName: "snowflake"),
        Focus(title: "For Movement", description: "Boost your performance with mindfulness. Manage emotions and expections while rehabilitating", imageName: "thermometer.sun.fill"),
    ]
    
    static let recommendations: [Focus] = [
        Focus(title: "Kessonga's Guide to Focus", description: "Gain a mindful approach to focus and attention.", imageName: "sun.max.fill"),
        Focus(title: "For Work", description: "Build and regain focus for a productive workday.", imageName: "thermometer.snowflake"),
        Focus(title: "For Movement", description: "Boost your performance with mindfulness. Manage emotions and expections while rehabilitating", imageName: "thermometer.sun.fill"),
    ]
}
