//
//  BannerInfo.swift
//  SpotifyPaywall
//
//  Created by joonwon lee on 2022/04/30.
//

import Foundation

struct BannerInfo: Hashable {
    let title: String
    let description: String
    let imageName: String
}

extension BannerInfo {
    static let list = [
        BannerInfo(title: "Dicover the world's music", description: "Explore international music in many genres.", imageName: "img_music_discover"),
        BannerInfo(title: "Personalized playlists", description: "Made just for you, based on your taste.", imageName: "img_music_personalized"),
        BannerInfo(title: "Listen offline", description: "Download songs to your app and bring them on the go.", imageName: "img_music_download"),
        BannerInfo(title: "Stream on any device", description: "Available on mobile, PC and tablet.", imageName: "img_music_multi_device"),
        
    ]
}
