//
//  PlayerView.swift
//  DataFlow-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct PlayerView: View {
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(episode.title)
                .font(.largeTitle)
            Text(episode.showTitle)
                .font(.title3)
                .foregroundColor(.gray)
            
            PlayButton(isPlaying: $isPlaying)
            PlayingStatusView(isPlaying: $isPlaying)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.list[0])
    }
}



