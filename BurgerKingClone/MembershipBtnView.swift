//
//  MembershipBtnView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct MembershipBtnView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 30, height: 100)
                .foregroundColor(Color("wite"))
                .cornerRadius(15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Membership")
                        .foregroundColor(Color("brown"))
                        .font(.title2)
                        .bold()
                    Text("멤버십 전용해텍과 특가 쿠폰을 \n 지금바로 확인하세요.")
                        .foregroundColor(Color("brown"))
                        .font(.system(size: 13))
                        .bold()
                }
                .padding(.leading, 45)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("user")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 35)
                })
            }
        }
        
    }
}

struct MembershipBtnView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipBtnView()
    }
}
