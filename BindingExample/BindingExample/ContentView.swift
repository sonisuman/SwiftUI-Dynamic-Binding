//
//  ContentView.swift
//  BindingExample
//
//  Created by Soni Suman on 24/12/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var trackName = ""
    var episodeName = ""
    var track = Track(name: "MacBreak videos", episode: "WWDC 2019")
    @State private var isPlaying : Bool = false
    
    private func printName() {
        print(name)
    }
    var body: some View {
        VStack {
            Text(self.track.name ?? "")
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            Text(self.track.episode ?? "")
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
        
    }
}
struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
            .padding(20)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
