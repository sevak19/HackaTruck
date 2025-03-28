//
//  ContentView.swift
//  Desafio10
//
//  Created by Arthur Costa on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green
                    .ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        NavigationLink (destination: PilotView(pilot: "Dominic Toretto") ) {
                            ZStack {
                                Color.gray
                                    .frame(width: 375)
                                    .cornerRadius(30)
                                HStack {
                                    AsyncImage(url: URL(string: "https://cdn.autopapo.com.br/box/uploads/2023/12/17124935/carro-do-toretto-.jpg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(10)
                                    .scaledToFit()
                                    .padding()
                                    Text("Dominic Toretto")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        NavigationLink (destination: PilotView(pilot: "Brian O'Conner") ) {
                            ZStack {
                                Color.blue
                                    .frame(width: 375)
                                    .cornerRadius(30)
                                HStack {
                                    AsyncImage(url: URL(string: "https://www.rbsdirect.com.br/filestore/7/5/8/8/0/3_490087f6ccba9e8/308857_af6a6f1c164afbc.jpeg?format=webp&w=1600&h=1600&a=c")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 200, height: 200)
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding()
                                    Text("Brian O'Conner")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        NavigationLink (destination: PilotView(pilot: "Han Seoul-Oh") ) {
                            ZStack {
                                Color.black
                                    .frame(width: 375)
                                    .cornerRadius(30)
                                HStack {
                                    AsyncImage(url: URL(string: "https://ew.com/thmb/eFIMum6eR4KjG471gpRWlHYcK5w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/fast-and-furious-6_0-76b82302cb75469c8b05977f94743c03.jpg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 200, height: 200)
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding()
                                    Text("Han Seoul-Oh")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
        }
        .onAppear() {
            viewModel.fetch()
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
