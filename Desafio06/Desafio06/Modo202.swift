//
//  Modo202.swift
//  Desafio06
//
//  Created by Arthur Costa on 21/03/25.
//

import SwiftUI

struct Modo202: View {
    
    @State var name: String
    
    var body: some View {
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
                        .frame(width: 175, height: 125)
                        .foregroundColor(.pink)
                        .cornerRadius(10)
                    VStack {
                        Text("Volte, \(name)")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Modo202(name: "")
}
