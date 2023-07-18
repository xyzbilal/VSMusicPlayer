//
//  SideMenuItem.swift
//  VSMusicPlayer
//
//  Created by Bilal SIMSEK on 18.07.2023.
//

import Foundation

struct SideMenuItem:Identifiable,Hashable{
    var id = UUID()
    var name:String
    var icon:String
}

let sideMenuItems:[SideMenuItem] = [
    SideMenuItem(name: "Recently Added", icon: "clock"),
    SideMenuItem(name: "Artists", icon: "music.mic"),
    SideMenuItem(name: "Albums", icon: "square.stack"),
    SideMenuItem(name: "Songs", icon: "music.note"),
    SideMenuItem(name: "Made For You", icon: "person.crop.square")
]
