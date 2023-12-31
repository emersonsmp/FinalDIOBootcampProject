//
//  CelulaViagemView.swift
//  Brasil-viagens
//
//  Created by Emerson Sampaio on 26/05/23.
//

import SwiftUI

struct CelulaViagemView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var viagem: Viagem
    var body: some View {
        VStack(alignment: .leading ) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14: 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125: 200)
                .clipped()
            
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14: 24))
                Spacer()
                Text(viagem.valor)
                
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
//        CelulaViagemView(viagem: viagens[0])
//            .previewLayout(.fixed(width: 350, height: 200))
        
        Group{
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 350, height: 200))

            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 310))
        }
    }
}
