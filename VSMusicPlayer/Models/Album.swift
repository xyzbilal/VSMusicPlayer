//
//  Album.swift
//  VSMusicPlayer
//
//  Created by Bilal SIMSEK on 18.07.2023.
//

import Foundation

struct Album:Identifiable{
    var id = UUID()
    var image:String
    var title:String
    var subTitle:String
}

let albums:[Album] = [
Album(image: "https://i.ebayimg.com/images/g/aH8AAOSw-btfHf7w/s-l1600.jpg", title: "Sounds of Summer", subTitle: "The Beach Boys"),
Album(image: "https://i1.sndcdn.com/artworks-000062990693-jmmrf0-t500x500.jpg", title: "Overexposed", subTitle: "Maroon 5"),
Album(image: "https://media.pitchfork.com/photos/5f2daa5bbcc4654c5fe16cd4/1:1/w_320,c_limit/dreamland_glass%20animals.jpg", title: "Dreamland", subTitle: "Glass Animals"),
Album(image: "https://i.ebayimg.com/images/g/aH8AAOSw-btfHf7w/s-l1600.jpg", title: "Sounds of Summer", subTitle: "The Beach Boys"),
Album(image: "https://i1.sndcdn.com/artworks-000062990693-jmmrf0-t500x500.jpg", title: "Overexposed", subTitle: "Maroon 5"),
Album(image: "https://media.pitchfork.com/photos/5f2daa5bbcc4654c5fe16cd4/1:1/w_320,c_limit/dreamland_glass%20animals.jpg", title: "Dreamland", subTitle: "Glass Animals")
//Album(image: "", title: "Modern Love", subTitle: "Yuvan Shanker Raja"),
//Album(image: "https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/6b/e3/98/6be39834-891a-01ec-b519-b39482b0c71c/859725865322_cover.jpg/296x296bb.webp", title: "Formula 1 theme", subTitle: "Brian Tyler"),

]

