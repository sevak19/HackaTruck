//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma02-3 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Histórico do Sensor de Umidade")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                VStack {
                    Image(systemName: "drop")
                        .resizable()
                        .frame(width: 75, height: 100)
                    ScrollView {
                        ForEach(viewModel.umidades, id:\.self) { v in
                            Spacer()
                            Text("Umidade = \(v.umidade)")
                                .frame(width: 300, height: 50)
                                .background(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .onAppear() {
                    viewModel.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
