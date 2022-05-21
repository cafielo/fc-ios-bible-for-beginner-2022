//
//  ContentView.swift
//  DataFlow-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
