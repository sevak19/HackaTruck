//
//  BlueView.swift
//  Desafio05
//
//  Created by Turma02-3 on 21/03/25.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack (alignment: .center) {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 300, height: 400)
                .foregroundColor(.blue)
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    BlueView()
}
