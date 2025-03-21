//
//  ListView.swift
//  Desafio05
//
//  Created by Turma02-3 on 21/03/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack {
                    Text("Blue")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack {
                    Text("Gray")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListView()
}
