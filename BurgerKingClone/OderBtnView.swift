//
//  OrderBtnView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct OderBtnView: View {
    
    let backgroundColorName: String
    let firstText: String
    let secondText: String
    let imageName: String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 20, height: 80)
                    .cornerRadius(15)
                    .foregroundColor(Color(backgroundColorName))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(firstText)
                            .foregroundColor(Color("wite"))
                        //                        .multilineTextAlignment(.center)
                        
                        Text(secondText)
                            .foregroundColor(Color("wite"))
                            .font(.system(size: 10))
                            .bold()
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                }
            }
        })
        
    }
}
//struct OrderBtnView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderBtnView()
//    }
//}
