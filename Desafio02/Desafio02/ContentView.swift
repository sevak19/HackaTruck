//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma02-3 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("HackaTruck")
                .resizable()
                .cornerRadius(150)
                .frame(width: 200, height: 200)
            Spacer()
            VStack () {
                Text("HackaTruck")
                    .foregroundColor(.red)
                Text("77 Universidades")
                    .foregroundColor(.blue)
                Text("5 regiões do Brasil")
                    .foregroundColor(.orange)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
