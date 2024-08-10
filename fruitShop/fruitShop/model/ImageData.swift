//
//  ImageData.swift
//  fruitShop
//
//  Created by Hannah on 1/7/2567 BE.
//

import Foundation

struct fruitModel{
    var id : Int
    var title : fruitTitle
    var price : String
    var color : String
    var image : String
}

enum fruitTitle : String {
    case apple,apricot,avocado,banana,blackberry,cherry,dragonfruit,fig,grapes,kiwi,lemon,mango,muskmelon,orange,papaya,pear,pineapple,plum,raspberry,strawberry,watermelon
}
