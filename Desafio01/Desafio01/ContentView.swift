//
//  ContentView.swift
//  Desafio01
//
//  Created by Arthur Costa on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack () {
            HStack () {
                Rectangle()
                    .fill(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Rectangle ()
                    .fill(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            Spacer()
            HStack () {
                Rectangle()
                    .fill(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Rectangle ()
                    .fill(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
