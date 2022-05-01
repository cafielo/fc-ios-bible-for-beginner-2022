//
//  QuickFocus.swift
//  HeadSpaceFocus
//
//  Created by joonwon lee on 2022/05/01.
//

import Foundation


struct QuickFocus: Hashable {
    let title: String
    let description: String
    let imageName: String
}

extension QuickFocus {
    static let breathing: [QuickFocus] = [
        QuickFocus(title: "Breathe with the Cat", description: "Take five deep breaths", imageName: "img_breathe_with_cat"),
        QuickFocus(title: "Breathe with the Clouds", description: "Take five deep breaths", imageName: "img_breathe_with_the_clouds"),
        QuickFocus(title: "Breathe with the Waves", description: "Take five deep breaths", imageName: "img_breathe_with_the_waves"),
        QuickFocus(title: "Breathe with the Balloon", description: "Take five deep breaths", imageName: "img_breathe_with_the_balloon"),
        QuickFocus(title: "Breathe with the Sun", description: "Take five deep breaths", imageName: "img_breathe_with_the_sun"),
    ]
    
    static let walking: [QuickFocus] = [
        QuickFocus(title: "Walking in the city", description: "Stay connected to the world during a walk in the city", imageName: "img_walking_in_the_city"),
        QuickFocus(title: "Walking in Nature", description: "Genuinely experience the natural world around you.", imageName: "img_walking_in_nature"),
        QuickFocus(title: "Walking at Home", description: "Practice mindfullness by noticing how your body feels.", imageName: "img_walking_at_home"),
        QuickFocus(title: "Get motivated TFL", description: "Discover what it means to take smaller steps on the way to reaching larger goals.", imageName: "img_get_motivated_tfl"),
        QuickFocus(title: "Walking in London", description: "Let nature calm you on a guided strol through some of the city's most serene spaces", imageName: "img_walking_london"),
    ]
}
