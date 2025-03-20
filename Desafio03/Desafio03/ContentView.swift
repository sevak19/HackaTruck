//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma02-3 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome: String = ""
    
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Image("HackaTruck")
                .resizable()
                .blur(radius: 50)
            VStack {
                Text("Bem vindo, \(nome)!")
                TextField("Digite seu nome", text: $nome)
                Spacer()
                Image("logo-topo")
                    .resizable()
                    .frame(width: 300, height: 200)
                Spacer()
                Button("Entrar") {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("ENTRAR"),
                            message: Text("Você irá iniciar o desafio da aula agora"),
                            dismissButton: .default(Text("Vamos lá!"))
                        )
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
