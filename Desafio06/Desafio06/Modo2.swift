//
//  Modo2.swift
//  Desafio06
//
//  Created by Arthur Costa on 21/03/25.
//

import SwiftUI

struct Modo2: View {
    
    @State private var name : String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.gray)
                    .ignoresSafeArea()
                VStack {
                    Text("Modo 2")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 150)
                            .foregroundColor(.pink)
                            .cornerRadius(10)
                        VStack {
                            TextField("Digite seu nome", text: $name)
                                .multilineTextAlignment(.center)
                            Text("Bem-vindo, \(name)")
                                .foregroundColor(.white)
                            NavigationLink(destination: Modo202(name: name)) {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 150, height: 30)
                                        .foregroundColor(.blue)
                                        .cornerRadius(10)
                                    Text("Acessar Tela")
                                        .foregroundColor(.white)
                                }
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
    Modo2()
}
