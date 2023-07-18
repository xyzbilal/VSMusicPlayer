//
//  AlbumsView.swift
//  VSMusicPlayer
//
//  Created by Bilal SIMSEK on 18.07.2023.
//

import SwiftUI

struct AlbumsView: View {
    @State private var searchText:String = ""

    let colums:[GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
      
         
            ScrollView {
               TextField("Search in Albums", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                  
                LazyVGrid(columns: colums,spacing: 24){
                    ForEach(albums) { album in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                            VStack(alignment:.leading){
                                AsyncImage(url: URL(string: album.image)) { image in
                                    image.resizable()
                                } placeholder: {
                                    Rectangle()
                                        .foregroundStyle(.tertiary)
                                }
                                .aspectRatio(1,contentMode: .fill)
                                .scaledToFill()
                                .cornerRadius(10)
                                
                                Text(album.title)
                                    .lineLimit(1)
                                Text(album.subTitle)
                                    .foregroundStyle(.tertiary)

                            }
                            .hoverEffect()
                        }
                        .buttonStyle(.plain)
                    }
                }
                
            }.padding(.horizontal,24)
            .toolbar{
                ToolbarItemGroup(placement: .topBarLeading) {
                    VStack {
                        Text("Albums")
                            .font(.largeTitle)
                        Text("53 songs")
                            .foregroundStyle(.tertiary)
                    }
                }
                
                ToolbarItem {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.3.horizontal.decrease")
                    })
                }
            }
        
            .toolbar{
                ToolbarItemGroup(placement: .bottomOrnament) {
                    HStack{
                        Button {
                            
                        } label: {
                            Image(systemName: "backward.fill")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "pause.fill")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "forward.fill")
                        }
                       
                        PlayingCardView()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "quote.bubble")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "list.bullet")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "speaker.wave.3.fill")
                        }
                        
                    
                    }
                    .padding(.vertical,8)
                }
            }
    }
    
    
    @ViewBuilder
    func PlayingCardView()->some View{
        HStack{
            AsyncImage(url: URL(string: albums.first!.image)) { image in
                image.resizable()
            } placeholder: {
                Rectangle()
                    .foregroundStyle(.tertiary)
            }
            .frame(width:48,height:48)
            .cornerRadius(6)
            
            VStack{
                Text("Kokomo")
                Text("The Beach Boys")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }
            .frame(width:160, alignment:.leading)
            Button {
                
            } label: {
                Image(systemName: "ellipsis")
            }
            .buttonBorderShape(.circle)
        }
        .padding(.all,8)
        .background(.regularMaterial,in:.rect(cornerRadius:14))
    }
}

#Preview {
    ContentView()
}
