//
//  InputView.swift
//  String
//
//  Created by 许滨麟 on 2021/5/31.
//

import SwiftUI

struct InputView: View {
    var body: some View {
        GeometryReader{ proxy in
            HStack(spacing:15){
                ExtraInputView().frame(maxHeight:.infinity).frame(width: 0.6 * proxy.size.width)
                MainInputView().frame(maxHeight:.infinity).frame(width: 0.4 * proxy.size.width)
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
