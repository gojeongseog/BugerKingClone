//
//  HeaderView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 100)
                .foregroundColor(Color("background"))
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50,height:50)
            HStack {
                Button(action: {
                }, label: {
                    Image("menuBtn")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height:20)
                })
                .padding(15)
                Spacer()
                Button(action: {
                }, label: {
                    Image("barcodeBtn")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height:20)
                })
                
                Button(action: {
                }, label: {
                    Image("basketBtn")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height:20)
                })
                .padding(15)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
