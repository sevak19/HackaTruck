//
//  PilotView.swift
//  Desafio10
//
//  Created by Arthur Costa on 27/03/25.
//

import SwiftUI

struct PilotView: View {
    
    @StateObject var viewModel = ViewModel()
    
    @State var pilot : String
    
    @State var han = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            ScrollView {
                VStack {
                    ForEach(viewModel.cars, id:\.self) { c in
                        if(han) {
                            Text("deu bom")
                        }
                        //Text(c.nome ?? "")
                        //    .foregroundColor(.black)
                        Spacer()
                    }
                }
            }
        }
        .onAppear() {
            viewModel.fetch()
            if(pilot.elementsEqual("Han Seoul-Oh")) {
                han = true
            }
        }
    }
}

#Preview {
    PilotView(pilot: "")
}
