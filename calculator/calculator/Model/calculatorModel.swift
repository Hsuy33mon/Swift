//
//  calculatorModel.swift
//  calculator
//
//  Created by Hannah on 17/5/2567 BE.
//

import Foundation
import SwiftUI

enum Keys:String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case minus = "-"
    case multiply = "x"
    case divide = "÷"
    case clear = "AC"
    case negative = "-/+"
    case decimal = "."
    case percent = "%"
    case equal = "="
    
    var buttonColor: Color {
        switch self {
        case .add, .minus, .multiply, .divide, .equal :
            return Color("Voperator")
        case .clear, .negative, .percent:
            return Color("Hoperator")
        default:
            return Color("Num")
            
        }
        
    }
}
enum Operation {
    case add,minus,multiply,divide,none
}
