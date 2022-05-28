//
//  HomeView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    MembershipBtnView()
                        .padding(.top, 70)
                    AdView()
                        .padding(.top, 10)
                    HStack {
                        OderBtnView(backgroundColorName: "red", firstText: "킹오더", secondText: "매장에서 미리 주문", imageName: "kingorder")
                        Spacer()
                        OderBtnView(backgroundColorName: "green", firstText: "딜리버리", secondText: "문 앞까지 배달", imageName: "delivery")
                    }
                    .padding(.top, 10)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    Text("It's NEW")
                        .foregroundColor(Color("brown"))
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                        .padding(.top, 30)
                    NewMenuView()
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: 100)
                        .foregroundColor(Color("background"))
                }
            }
            VStack {
                HeaderView()
                    .ignoresSafeArea()
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
