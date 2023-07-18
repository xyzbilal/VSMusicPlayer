//
//  SideMenuView.swift
//  VSMusicPlayer
//
//  Created by Bilal SIMSEK on 18.07.2023.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        List(sideMenuItems) { item in
            NavigationLink(value:item.self){
                Label(item.name,systemImage:item.icon)
                    .foregroundStyle(.primary)
               
            }
            .navigationDestination(for: SideMenuItem.self) { item in
                
            }
         
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "ellipsis")
                })
            }
        }
    }
}
