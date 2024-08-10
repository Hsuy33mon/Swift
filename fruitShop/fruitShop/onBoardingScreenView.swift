//
//  onBoardingScreenView.swift
//  fruitShop
//
//  Created by Hannah on 30/6/2567 BE.
//

import SwiftUI

struct onBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img").resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                VStack(alignment: .leading,spacing: 10) {
                    Text("Order Your Favourite Fruits")
                        .bold()
                        .font(.system(size: 40))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.title3)
                }
                Spacer()
                NavigationLink(destination: HomeScreen()){
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color("6"))
                        .frame(width: 300, height: 80, alignment: .trailing)
                        .overlay( HStack{
                            Text("Next")
                                .font(.title)
                                .bold()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(.black))
                }
                Spacer()
                
            }
        }

    }
}

#Preview {
    onBoardingScreenView()
}
