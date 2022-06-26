//
//  ItemInfo.swift
//  CarrotHomeTab
//
//  Created by joonwon lee on 2022/06/25.
//

import Foundation

struct ItemInfo: Codable, Hashable {
    
    let postID: String
    let title: String
    let location: String
    let updated: TimeInterval
    let price: Int
    let numOfChats: Int
    let numOfLikes: Int
    let thumbnailURL: String
}
