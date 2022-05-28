//
//  MyView.swift
//  BurgerKingClone
//
//  Created by KoJeongseok on 2022/05/28.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        
        
        ZStack {
            
            Color("background")
                .ignoresSafeArea()
            
            Text("MyView")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
