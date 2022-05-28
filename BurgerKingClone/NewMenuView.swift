//
//  NewMenuView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct NewMenuView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack {
                
                NewBurger(newBurgerImage: "new1", newBurgerText: "디아블로 얼티밋 도넛킹")
                    .frame(width: UIScreen.main.bounds.width * (2 / 5) - 15, height: 150)
                    .padding(.leading, 20)
                    
                
                NewBurger(newBurgerImage: "new2", newBurgerText: "크리스피 도넛치킨버거")
                    .frame(width: UIScreen.main.bounds.width * (2 / 5) - 15, height: 150)
                    .padding(.leading, 5)
                
                NewBurger(newBurgerImage: "new3", newBurgerText: "스파이시 도넛치킨버거")
                    .frame(width: UIScreen.main.bounds.width * (2 / 5) - 15, height: 150)
                    .padding(.leading, 5)
                    
                
            }
            
        }
        
        
        
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewMenuView()
//        NewBurger(newBurgerImage: "new1", newBurgerText: "디아블로 얼티밋 도넛킹")
    }
}

struct NewBurger: View {
    
    let newBurgerImage: String
    let newBurgerText: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * (2 / 5) - 15, height: 150)
                .foregroundColor(Color("wite"))
                .cornerRadius(15)
            
            VStack {
                Image(newBurgerImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 100)
                    
                Text(newBurgerText)
                    .font(.system(size: 12))
                    .bold()
                    .foregroundColor(Color("brown"))
            }
            .frame(width: 150, height: 150)
            
            
        }
    }
}
