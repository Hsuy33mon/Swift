//
//  DetailView.swift
//  fruitShop
//
//  Created by Hannah on 1/7/2567 BE.
//

import SwiftUI

struct DetailView: View {
    @State var fruit: fruitTitle
    
    var body: some View {
        VStack(alignment: .leading,spacing : 25){
            Image("bg").resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corners:[.bottomLeft,.bottomRight],cornerRadius: 50))
                .frame(width: .infinity,height: .infinity,alignment: .top)
        }
    }
}

#Preview {
    DetailView(fruit: .apple)
}
