//
//  HeaderView.swift
//  Brasil-viagens
//
//  Created by Emerson Sampaio on 26/05/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    
    var body: some View {
        GeometryReader {view in
            VStack{
                VStack{
                    Text("Brasil viagens")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.custom("Avenir Black", size: self._horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self._horizontalSizeClass == .compact ? 50 : 90)
                    
                    Text("Especial")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.custom("Avenir Book", size: self._horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading )
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(.custom("Avenir Black", size: self._horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading )
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: self._horizontalSizeClass == .compact ? 180: 280, alignment: .top)
                .background(.purple)
                
                HStack {
                    Button(action: {}){
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self._horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: self._horizontalSizeClass == .compact ? 110 : 150, height: self._horizontalSizeClass == .compact ? 60 : 75)
                    .background(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: self._horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button(action: {}){
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self._horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: self._horizontalSizeClass == .compact ? 110 : 150, height: self._horizontalSizeClass == .compact ? 60 : 75)
                    .background(.orange)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .offset(x: self._horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                }
                .offset(y: self._horizontalSizeClass == .compact ? -25 : -55)
        }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 310))
        }
    }
}
