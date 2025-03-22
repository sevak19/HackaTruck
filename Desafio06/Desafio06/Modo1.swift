//
//  Modo1.swift
//  Desafio06
//
//  Created by Arthur Costa on 21/03/25.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.gray)
                    .ignoresSafeArea()
                VStack {
                    Text("Modo 1")
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
                }
            }
        }
    }
}

#Preview {
    Modo1()
}
