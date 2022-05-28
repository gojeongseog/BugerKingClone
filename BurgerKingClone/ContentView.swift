//
//  ContentView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var isSelected = false
    @State var isOrderSelected = false

    var body: some View {
        ZStack {
            
            switch selectedIndex {
            case 0:
                HomeView()
            case 1:
                CouponView()
            case 2:
                OrderView()
            case 3:
                MyView()
            case 4:
                MoreView()
            default:
                HomeView()
            }
            
            if isOrderSelected {
                OderPopupView()
                    .onTapGesture {
                        isOrderSelected.toggle()
                    }
            }

//            VStack {
//                Spacer()
//                Rectangle()
//                    .ignoresSafeArea()
//                    .foregroundColor(Color("background"))
//                    .frame(width: UIScreen.main.bounds.width, height: 65)
//                    .shadow(radius: 10)
//                    .mask(Rectangle().padding(.top, -20))
//                    .background(Color("background").ignoresSafeArea())
//            }
            
            VStack {
                Spacer()
                TabBarView(selectedIndex: $selectedIndex, isOrderSelected: $isOrderSelected)
            }
// 문제 생길시에 아래 주석처리된 버튼들 이곳으로 이동
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        // 이거 어케봄?
//        TabBarView(selectedIndex: $selectedIndex, isOrderSelected: $isOrderSelected)
    }
}

//            VStack {
//                Spacer()
//                HStack {
//
//                    Button(action: {
//                        selectedIndex = 0
//                        isOrderSelected.toggle()
//                    }, label: {
//                        Spacer()
//
//                        if selectedIndex == 0 {
//                            TabBerItemView(tabBarItemTextColor: "red", index: 5)
//
//                        } else {
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 0)
//                        }
//                        Spacer()
//
//                    })
//
//                    Button(action: {
//                        selectedIndex = 1
//                        isOrderSelected.toggle()
//                    }, label: {
//                        Spacer()
//
//                        if selectedIndex == 1 {
//
//                            TabBerItemView(tabBarItemTextColor: "red", index: 6)
//                        } else {
//
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 1)
//                        }
//                        Spacer()
//
//                    })
//
//                    Button(action: {
//                        isOrderSelected.toggle()
//                    }, label: {
//                        Spacer()
//
//                        if isOrderSelected {
//
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 7)
//                        } else {
//
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 2)
//                        }
//                        Spacer()
//
//                    })
//
//                    Button(action: {
//                        selectedIndex = 3
//                        isOrderSelected.toggle()
//                    }, label: {
//                        Spacer()
//
//                        if selectedIndex == 3 {
//
//                            TabBerItemView(tabBarItemTextColor: "red", index: 8)
//                        } else {
//
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 3)
//                        }
//                        Spacer()
//
//                    })
//                    Button(action: {
//                        selectedIndex = 4
//                        isOrderSelected.toggle()
//                    }, label: {
//                        Spacer()
//
//                        if selectedIndex == 4 {
//                            TabBerItemView(tabBarItemTextColor: "red", index: 9)
//                        } else {
//                            TabBerItemView(tabBarItemTextColor: "brown", index: 4)
//                        }
//                        Spacer()
//                    })
//                }
//            }
