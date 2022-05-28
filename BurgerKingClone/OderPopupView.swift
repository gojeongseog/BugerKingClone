//
//  OderPopupView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct OderPopupView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(0.7)
            VStack {
                Spacer()
                HStack {
                    OderBtnView(backgroundColorName: "red", firstText: "킹오더", secondText: "매장에서 미리 주문", imageName: "kingorder")
                    Spacer()
                    OderBtnView(backgroundColorName: "green", firstText: "딜리버리", secondText: "문 앞까지 배달", imageName: "delivery")
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
                .padding(.bottom, 75)
            }
            
                
        }
    }
}

struct OderPopupView_Previews: PreviewProvider {
    static var previews: some View {
        OderPopupView()
    }
}
