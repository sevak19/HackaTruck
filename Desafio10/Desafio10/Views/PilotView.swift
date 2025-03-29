//
//  PilotView.swift
//  Desafio10
//
//  Created by Arthur Costa on 27/03/25.
//

import SwiftUI

struct PilotView: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var pilot : String
    
    @State var url : String
    
    @State var cor : Color
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
                .edgesIgnoringSafeArea(.top)
            ScrollView {
                VStack {
                    ZStack {
                        Color(cor)
                            .frame(width: 250)
                            .cornerRadius(10)
                       
                        VStack {
                            AsyncImage(url: URL(string: url)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .cornerRadius(10)
                            .padding()
                            Text(pilot)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    VStack {
                        ForEach(viewModel.cars, id:\.self) { c in
                            if(c.piloto == pilot) {
                                ZStack {
                                    Color(cor)
                                        .frame(width: 375, height: 100)
                                        .cornerRadius(10)
                                    HStack {
                                        Spacer()
                                        HStack {
                                            Text(c.nome ?? "")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Spacer()
                                            Text(c.caracteristicas ?? "")
                                                .foregroundColor(.white)
                                        }
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .onAppear() {
            viewModel.fetch()
        }
    }
}

#Preview {
    PilotView(pilot: "Dominic Toretto", url: "https://cdn.autopapo.com.br/box/uploads/2023/12/17124935/carro-do-toretto-.jpg", cor: .gray)
}
