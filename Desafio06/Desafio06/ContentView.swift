//
//  ContentView.swift
//  Desafio06
//
//  Created by Arthur Costa on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.gray)
                    .ignoresSafeArea()
                VStack {
                    Image("logo-topo")
                        .resizable()
                        .frame(width: 300, height: 150)
                    Spacer()
                    VStack {
                        NavigationLink(destination: Modo1()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 175, height: 65)
                                    .foregroundColor(.pink)
                                Text("Modo 1")
                                    .foregroundColor(.white)
                            }
                        }
                        NavigationLink(destination: Modo2()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 175, height: 65)
                                    .foregroundColor(.pink)
                                Text("Modo 2")
                                    .foregroundColor(.white)
                            }
                        }
                        Button (action: {
                            isShowingSheet.toggle()
                        }) {
                            Text("Modo 3")
                        }
                        .frame(width: 175, height: 65)
                        .background(.pink)
                        .foregroundColor(.white)
                        .sheet(isPresented: $isShowingSheet) {
                            ZStack {
                                Color(.gray)
                                    .ignoresSafeArea()
                                VStack {
                                    Text("Sheet View")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    Spacer()
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 175, height: 125)
                                            .foregroundColor(.pink)
                                            .cornerRadius(10)
                                        VStack {
                                            Text("Nome: Arthur")
                                                .foregroundColor(.white)
                                            Text("Sobrenome: Costa")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    Spacer()
                                    Button("Dismiss", action: { isShowingSheet.toggle() })
                                        .foregroundColor(.white)
                                }
                                .padding()
                            }
                                    
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
