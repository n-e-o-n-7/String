//
//  ContentView.swift
//  String
//
//  Created by 许滨麟 on 2021/5/31.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        GeometryReader{ proxy in
            VStack(spacing:0){
                DisplayView().frame(maxWidth:.infinity).frame(height:0.55 * proxy.size.height)
                InputView().frame(maxWidth:.infinity).frame(height:0.45 * proxy.size.height)
            }
//            .background(Color("Background").ignoresSafeArea())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
