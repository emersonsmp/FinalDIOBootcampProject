//
//  ContentView.swift
//  Brasil-viagens
//
//  Created by Emerson Sampaio on 26/05/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    
    var body: some View {
        
        NavigationView{
            GeometryReader { view in
                VStack{
                    HeaderView()
                        .frame(
                            width: view.size.width,
                            height: self._horizontalSizeClass == .compact ? 220: 310,
                            alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle(viagem.titulo)){
                            CelulaViagemView(viagem: viagem)
                        }
                    }
                    .navigationTitle("")
                    .background(.white)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
