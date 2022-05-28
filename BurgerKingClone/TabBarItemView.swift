//
//  TabBerItemView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct TabBarItemView: View {
    
    
    let tabBarItemImage = ["home.brown", "coupon.brown", "order", "my.brown", "more.brown","home.red", "coupon.red", "order.x", "my.red", "more.red"]
    let tabBarItemText = ["홈", "쿠폰", "주문", "MY킹", "더보기", "홈", "쿠폰", "주문", "MY킹", "더보기"]
    var tabBarItemTextColor: String
    var index: Int
    
    var body: some View {
        
        
        VStack {
                Image(tabBarItemImage[index])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 23, height:23)

            Text(tabBarItemText[index])
                .font(.system(size: 12))
                
                .foregroundColor(index != 2 ? Color(tabBarItemTextColor) : Color("wite"))
                .bold()
                .padding(.bottom, 10)
        }
    }
}

//struct TabItem_Previews: PreviewProvider {
//    static var previews: some View {
//        TabItem()
//    }
//}
