//
//  GrayView.swift
//  Desafio05
//
//  Created by Turma02-3 on 21/03/25.
//

import SwiftUI

struct GrayView: View {
    var body: some View {
        ZStack (alignment: .center) {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintpalette")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 300, height: 400)
                .foregroundColor(.gray)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    GrayView()
}
