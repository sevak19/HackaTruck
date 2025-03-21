//
//  ContentView.swift
//  Desafio05
//
//  Created by Arthur Costa on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PinkView ()
                .tabItem {
                    Label("Pink", systemImage:"paintbrush.fill")
                }
            BlueView ()
                .tabItem {
                    Label("Blue", systemImage:"paintbrush.pointed.fill")
                }
            GrayView ()
                .tabItem {
                    Label("Gray", systemImage:"paintpalette.fill")
                }
            ListView ()
                .tabItem {
                    Label("List", systemImage:"list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
