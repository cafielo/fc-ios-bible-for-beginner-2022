//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
            ButtonView()
            TextView()
            
            Spacer()
            
            HStack {
                ImageView()
                ButtonView()
                TextView()
                
            }
            
            Spacer()
            
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
