//
//  TopSellingView.swift
//  fruitShop
//
//  Created by Hannah on 1/7/2567 BE.
//

import SwiftUI

struct TopSellingView: View {
    
    let images: [fruitModel] = [
        .init(id: 1, title: .apple, price: "3.44$ each", color: "1", image: "apple"),
        .init(id: 2, title: .apricot, price: "2.44$ each", color: "3", image: "apricot"),
        .init(id: 3, title: .avocado, price: "3.04$ each", color: "6", image: "avocado"),
        .init(id: 4, title: .banana, price: "2.40$ each", color: "3", image: "banana"),
        .init(id: 5, title: .blackberry, price: "2.04$ each", color: "2", image: "blackberry"),
        .init(id: 6, title: .cherry, price: "5.44$ each", color: "1", image: "cherry"),
        .init(id: 7, title: .dragonfruit, price: "1.44$ each", color: "1", image: "dragonfruit"),
        .init(id: 8, title: .fig, price: "3.80$ each", color: "5", image: "fig"),
        .init(id: 9, title: .grapes, price: "2.08 each$", color: "5", image: "grapes"),
        .init(id: 10, title: .kiwi, price: "1.44 each$", color: "6", image: "kiwi"),
        .init(id: 11, title: .lemon, price: "1.87 each$", color: "3", image: "lemon"),
        .init(id: 12, title: .mango, price: "5.09$ each", color: "3", image: "mango"),
        .init(id: 13, title: .muskmelon, price: "3.44$ each", color: "6", image: "muskmelon"),
        .init(id: 14, title: .orange, price: "1.44$ each", color: "3", image: "orange"),
        .init(id: 15, title: .pear, price: "3.14$ each", color: "6", image: "pear"),
        .init(id: 16, title: .plum, price: "2.01$ each", color: "5", image: "plum"),
        .init(id: 17, title: .papaya, price: "4.98$ each", color: "3", image: "papaya"),
        .init(id: 18, title: .pineapple, price: "2.44$ each", color: "3", image: "pineapple"),
        .init(id: 19, title: .raspberry, price: "4.44$ each", color: "1", image: "raspberry"),
        .init(id: 20, title: .strawberry, price: "5.44$ each", color: "4", image: "strawbery"),
        .init(id: 21, title: .watermelon, price: "2.04$ each", color: "4", image: "watermelon")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                ForEach(images, id: \.id){post in
                    NavigationLink( destination: DetailView(fruit: post.title)){
                        FruitCard(fruits: post)
                    }
                }
            }
        }
    }
}

#Preview {
    TopSellingView()
}
