//
//  PinkView.swift
//  Desafio05
//
//  Created by Turma02-3 on 21/03/25.
//

import SwiftUI

struct PinkView: View {
    var body: some View {
        ZStack (alignment: .center) {
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 300, height: 400)
                .foregroundColor(.pink)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    PinkView()
}
