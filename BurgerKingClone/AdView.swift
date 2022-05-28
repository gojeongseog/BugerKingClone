//
//  AdView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct AdView: View {
    
    let adImageArray = ["adImage1", "adImage2", "adImage3"]
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var index = 1
    
    var body: some View {
        
        
        
        ZStack(alignment: .bottom) {
            
            TabView(selection: $index) {
                
                ForEach(1..<4) { num in
                    Button(action: {
                        
                    }, label: {
                        Image("\(num)")
                            .resizable()
                            .scaledToFit()
                    })
                    .tag(num)
                }
                
                
//                Button(action: {
//
//                }, label: {
//                    Image("adImage1")
//                        .resizable()
//                        .scaledToFit()
//                })
//                .tag(1)
//
//                Button(action: {
//
//                }, label: {
//                    Image("adImage4")
//                        .resizable()
//                        .scaledToFit()
//                })
//                .tag(2)
//
//                Button(action: {
//
//                }, label: {
//                    Image("adImage5")
//                        .resizable()
//                        .scaledToFit()
//
//                })
//                .tag(3)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onReceive(timer, perform: { _ in
                withAnimation {
                    index = index < 3 ? index + 1 : 1
                }
                
            })
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width - 30)
                .cornerRadius(15)
            
            HStack {
                
                ZStack {
                    Rectangle()
                        .frame(width: 50, height: 30)
                        .foregroundColor(.black)
                        .opacity(0.5)
                        .cornerRadius(5)
                    
                    HStack {
                        Text("\(index)")
                            .foregroundColor(Color("wite"))
                            .bold()
                        Text("/  3")
                            .foregroundColor(Color("wite"))
                            .bold()
                            .opacity(0.5)
                        
                    }
                }
                .padding(.leading)
                Spacer()
                
            }
            // 다음뷰로 넘어가기
//            Button(action: {
//                index += 1
//            }, label: {
//                Text("ok")
//            })
            
            
            
        }
        
        
    }
}

struct adView_Previews: PreviewProvider {
    static var previews: some View {
        AdView()
    }
}
