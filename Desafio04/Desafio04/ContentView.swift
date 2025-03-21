//
//  ContentView.swift
//  Desafio04
//
//  Created by Arthur Costa on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var distance: Float = 0
    @State private var time: Float = 0
    @State private var bgcolor: Color = .gray
    @State private var result: Float = 0
    @State private var strimage: String = "interrogacao"
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(bgcolor)
                .ignoresSafeArea()
            VStack {
                Text("Digite a distância (km):")
                TextField("Digite a distancia", value: $distance, format: .number)
                    .background()
                    .cornerRadius(10)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 35)
                Text("Digite o tempo (h):")
                TextField("Digite o tempo", value: $time, format: .number)
                    .background()
                    .cornerRadius(10)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 35)
                Button("Calcular") {
                    if(distance == 0 || time == 0) {
                        result = 0
                    } else {
                        result = distance/time
                        if(result < 9.9) {
                            bgcolor = .presetGreen
                            strimage = "patinete"
                        } else if (result < 29.9) {
                            bgcolor = .presetBlue
                            strimage = "bmx"
                        } else if (result < 69.9) {
                            bgcolor = .presetOrange
                            strimage = "skate"
                        } else if (result < 89.9) {
                            bgcolor = .presetYellow
                            strimage = "longboard"
                        } else if (result < 130) {
                            bgcolor = .presetRed
                            strimage = "segredo"
                        }
                    }
                }
                .foregroundStyle(.presetRed)
                .frame(width: 150, height: 50)
                .background(.black)
                .cornerRadius(10)
                Spacer()
                VStack {
                    Text("\(result.formatted()) km/h")
                        .font(.title)
                    Image("\(strimage)")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .cornerRadius(200)
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.black)
                        .ignoresSafeArea()
                        .frame(width: 300,height: 150)
                        .cornerRadius(15)
                    HStack {
                        VStack {
                            Text("PATINETE")
                                .foregroundStyle(.white)
                            
                            Text("BMX")
                                .foregroundStyle(.white)
                            
                            Text("SKATE")
                                .foregroundStyle(.white)
                            
                            Text("LONGBOARD")
                                .foregroundStyle(.white)
                            
                            Text("?????")
                                .foregroundStyle(.white)
                            
                        }
                        VStack {
                            Text("(0 - 9.9km/h)")
                                .foregroundStyle(.white)
                            
                            Text("(10 - 29.9km/h)")
                                .foregroundStyle(.white)
                            
                            Text("(30 - 69.9km/h)")
                                .foregroundStyle(.white)
                            
                            Text("(70 - 89.9km/h)")
                                .foregroundStyle(.white)
                            
                            Text("(90 - 130km/h)")
                                .foregroundStyle(.white)
                            
                        }
                        VStack {
                            Rectangle()
                                .fill(.presetGreen)
                                .frame(width: 15, height: 15)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .fill(.presetBlue)
                                .frame(width: 15, height: 15)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .fill(.presetOrange)
                                .frame(width: 15, height: 15)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .fill(.presetYellow)
                                .frame(width: 15, height: 15)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .fill(.presetRed)
                                .frame(width: 15, height: 15)
                                .cornerRadius(10)
                        }
                    }
                }
            }
                .padding()
            }
    }
}

#Preview {
    ContentView()
}
