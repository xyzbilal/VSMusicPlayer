//
//  ContentView.swift
//  VSMusicPlayer
//
//  Created by Bilal SIMSEK on 18.07.2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationSplitView {
             SideMenuView()
            } detail: {
            AlbumsView()
            } .tabItem { Label("Browse",systemImage: "music.note") }
                .tag(0)
            
            Text("Favorite")
                .tabItem { Label("Favorite",systemImage: "heart.fill") }
                .tag(1)
            
            Text("Playlist")
                .tabItem { Label("Playlist",systemImage: "play.square.stack") }
                .tag(2)
        }
       
        
    }
    

    
}

#Preview {
    NavigationStack{
        ContentView()
    }
   
}
