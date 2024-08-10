//
//  FruitCard.swift
//  fruitShop
//
//  Created by Hannah on 1/7/2567 BE.
//

import SwiftUI

let image : fruitModel = fruitModel(id: 1, title: .apple , price: "3.44$", color: "1", image: "apple")

struct FruitCard: View {
    let fruits : fruitModel
    var body: some View {
        ZStack{
            VStack(alignment:.leading,spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175,height: 150,alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,height: 80)
            }.offset(y: 60)
        }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:8,y:8)
            .frame(width: 175,height: 230)
    }
}

#Preview {
    FruitCard(fruits: image)
}
