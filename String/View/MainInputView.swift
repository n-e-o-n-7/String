//
//  MainInputView.swift
//  String
//
//  Created by 许滨麟 on 2021/5/31.
//

import SwiftUI

struct MainInputView: View {
    var body: some View {
        VStack(spacing:15){
            scrollContent
        }
        .background(Color("Background").clipShape(
            CusCorners(corners: [.topLeft, .bottomLeft], radius: 15)
        ))
        
    }
    
    
    var rows: [GridItem] =
        Array(repeating: .init(.fixed(60)), count: 5)
    var scrollContent:some View {
            LazyHGrid(rows: rows, alignment: .top) {
//        HStack{
                ForEach((0...19), id: \.self) { i in

                    Button(action: {
                        UIDevice.current.playInputClick()
                    }, label: {
                        RoundedRectangle(cornerRadius: 15)    .strokeBorder(Color.black.opacity(0.04), lineWidth: 0.5)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                            .overlay(Text(String(i))).frame(width: 90)
                            .shadow(color: Color.black.opacity(0.12), radius: 8, x: 0, y: 3)
                            .shadow(color: Color.black.opacity(0.04), radius: 1, x: 0, y: 3)
                    }).accentColor(.black)

                }
            }.padding()
            .frame(maxWidth:.infinity,alignment: .topLeading)
            
        
    }
}

struct MainInputView_Previews: PreviewProvider {
    static var previews: some View {
        MainInputView()
    }
}
