//
//  MusicPreview.swift
//  Desafio07
//
//  Created by Arthur Costa on 24/03/25.
//

import SwiftUI

struct MusicPreview: View {
    
    @State var music: Song = Song(id: 1, name:"teste", artist:"teste", capa:"teste")
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                AsyncImage(url: URL(string: music.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                Text(music.name)
                    .foregroundColor(.white)
                    .font(.title)
                Text(music.artist)
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                    Spacer()
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                    Spacer()
                }
                .padding()
                Spacer()
            }.tint(.white)
        }
    }
}

#Preview {
    MusicPreview()
}
