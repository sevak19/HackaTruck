//
//  ContentView.swift
//  Desafio07
//
//  Created by Arthur Costa on 24/03/25.
//

import SwiftUI

struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

struct Playlist : Identifiable {
    var id : Int
    var name : String
    var capa : String
}

struct ContentView: View {
    
    var arrayMusicas = [
        Song(id: 1, name: "Pelas ruas da city" , artist: "MZ", capa: "https://i.ytimg.com/vi/P-uBHbRlxoQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAn68NB6zOeo985pg8oK4TyD_2N_Q"),
        Song(id: 2, name: "Carburando a Forte" , artist: "Sain", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdKettAAibsYtilpslhf9UTphurd-tzckCGw&s"),
        Song(id: 3, name: "Carregando..." , artist: "Unknown", capa: "")
    ]
    
    var playlists = [
        Playlist(id: 1, name: "90s Hip-Hop", capa: "https://i.scdn.co/image/ab67706f000000028908106e49cde03e6d67073e"),
        Playlist(id: 2, name: "Rap Brasil", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da84970d8c2d3f3cb849bf15996b"),
        Playlist(id: 3, name: "HIP HOP", capa: "https://i0.wp.com/punkymoms.com/wp-content/uploads/2016/05/hip-hop-music-playlist-on-spotify.jpg?fit=940%2C788&ssl=1")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView {
                    Image("capa")
                        .resizable()
                        .frame(width: 250, height: 250)
                    HStack {
                        VStack {
                            Text("ÖffSet")
                                .font(.title)
                                .foregroundColor(.white)
                            HStack {
                                Image("capa")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .clipShape(.circle)
                                Text("sevak")
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    ForEach(arrayMusicas) { m in
                        NavigationLink (destination: MusicPreview(music: m)) {
                            HStack {
                                AsyncImage(url: URL(string: m.capa)) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 60, height: 60)
                                VStack (alignment: .leading) {
                                    Text(m.name)
                                        .foregroundColor(.white)
                                    Text(m.artist)
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                            }
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                        }.tint(.white)
                    }
                    HStack {
                        Text("Sugeridos")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding()
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(playlists) { p in
                                VStack {
                                    AsyncImage(url: URL(string: p.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 250, height: 250)
                                    HStack {
                                        Text(p.name)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
