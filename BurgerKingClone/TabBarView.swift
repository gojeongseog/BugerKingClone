//
//  TabBarView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

import SwiftUI

struct TabBarView: View {
    
        @Binding var selectedIndex: Int
        @Binding var isOrderSelected: Bool


    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("background"))
                .frame(width: UIScreen.main.bounds.width, height: 65)
                .shadow(radius: 10)
                .mask(Rectangle().padding(.top, -20))
                .background(Color("background").ignoresSafeArea())
//            Rectangle()
//                .ignoresSafeArea()
//                .foregroundColor(Color("background"))
//                .frame(width: UIScreen.main.bounds.width, height: 65)
//                .shadow(radius: 10)
//                .mask(Rectangle().padding(.top, -20))
//                .background(Color("background").ignoresSafeArea())
            
            Image("order.back")
                .resizable()
                .scaledToFill()
                .frame(width: 68,height:68)
            
            HStack {
                Button(action: {
                    selectedIndex = 0
                    isOrderSelected = false
                }, label: {
                    Spacer()

                    if selectedIndex == 0 {
                        TabBarItemView(tabBarItemTextColor: "red", index: 5)

                    } else {
                        TabBarItemView(tabBarItemTextColor: "brown", index: 0)
                    }
                    Spacer()
                })
                Button(action: {
                    selectedIndex = 1
                    isOrderSelected = false
                }, label: {
                    Spacer()
                    if selectedIndex == 1 {

                        TabBarItemView(tabBarItemTextColor: "red", index: 6)
                    } else {

                        TabBarItemView(tabBarItemTextColor: "brown", index: 1)
                    }
                    Spacer()
                })
                Button(action: {
                    isOrderSelected.toggle()
                }, label: {
                    Spacer()

                    if isOrderSelected {

                        TabBarItemView(tabBarItemTextColor: "brown", index: 7)
                    } else {

                        TabBarItemView(tabBarItemTextColor: "brown", index: 2)
                    }
                    Spacer()
                })
                Button(action: {
                    selectedIndex = 3
                    isOrderSelected = false
                }, label: {
                    Spacer()
                    if selectedIndex == 3 {

                        TabBarItemView(tabBarItemTextColor: "red", index: 8)
                    } else {

                        TabBarItemView(tabBarItemTextColor: "brown", index: 3)
                    }
                    Spacer()
                })
                Button(action: {
                    selectedIndex = 4
                    isOrderSelected = false
                }, label: {
                    Spacer()

                    if selectedIndex == 4 {
                        TabBarItemView(tabBarItemTextColor: "red", index: 9)
                    } else {
                        TabBarItemView(tabBarItemTextColor: "brown", index: 4)
                    }
                    Spacer()
                })
            }
            
            
        }
    }
}



//struct TabBarView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        TabBarView()
//    }
//}
