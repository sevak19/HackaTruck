//
//  ContentView.swift
//  Desafio08
//
//  Created by Arthur Costa on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable {
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region (
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -19.92557, longitude: -43.991597),
            span: MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15))
    )
    
    enum Local: String, CaseIterable, Identifiable {
        case bh, rio, teste
        var id: Self { self }
    }
    
    @State private var selectedLocal: Local = .bh
    
    var locals = [
        Location (nome: "bh", foto: "https://mercadohoje.uai.com.br/wp-content/uploads/2024/09/populacao-de-bh-e-a-sexta-maior-do-brasil-veja-numeros-scaled.jpg", descricao: "melhor cidade todo mundo sabe disso é o fato", latitude: -19.92557, longitude: -43.991597),
        Location (nome: "Cristo Redentor", foto: "https://lh3.googleusercontent.com/p/AF1QipMzAJtDqbSYNAY_2gTWNOcB9a-Ao4qMuN3n5psO=s1360-w1360-h1020", descricao: "um mano com os braco aberto", latitude: -22.951916, longitude: -43.210487)
    ]
    @State private var isShowingSheet = false
    @State private var aux = Location (nome: "", foto: "", descricao: "", latitude:1, longitude:1)
    
    var body: some View {
        ZStack {
            Map (position: $position) {
                ForEach(locals, id: \.self) { local in
                    Annotation(local.nome, coordinate: CLLocationCoordinate2D(latitude: local.latitude, longitude: local.longitude)) {
                        ZStack {
                            Button {
                                isShowingSheet.toggle()
                                aux = local
                            } label: {
                                Image(systemName: "mappin.circle.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                            }.tint(.black)
                                .sheet(isPresented: $isShowingSheet) {
                                    ZStack {
                                        Color(.preset)
                                            .ignoresSafeArea()
                                        VStack {
                                            Spacer()
                                            AsyncImage(url: URL(string: aux.foto)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 250, height: 250)
                                            Text(aux.nome)
                                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                .foregroundColor(.black)
                                            Spacer()
                                            VStack {
                                                Text(aux.descricao)
                                                    .foregroundColor(.black)
                                                    .frame(width: 250, height: 250)
                                                    .background(.preset2)
                                            }
                                            Spacer()
                                            Button("Dismiss", action: { isShowingSheet.toggle() })
                                                .foregroundColor(.black)
                                        }
                                        .padding()
                                    }
                                }
                        }
                    }
                }
            }
            .ignoresSafeArea()
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 40)
                        .foregroundColor(.preset)
                        .border(.black)
                    Picker(selection: $selectedLocal, label: Text("Picker")) {
                        Text("bh").tag(Local.bh)
                        Text("rio").tag(Local.rio)
                        Text("teste").tag(Local.teste)
                    }
                    .tint(.black)
                    .onChange(of: selectedLocal) { tag in print("Color tag: \(tag)") }
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .frame(width: 250, height: 40)
                        .foregroundColor(.preset)
                        .border(.black)
                    Text("Maravilhas do Mundo Moderno")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
