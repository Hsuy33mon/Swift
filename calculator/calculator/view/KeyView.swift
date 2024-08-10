//
//  KeyView.swift
//  calculator
//
//  Created by Hannah on 17/5/2567 BE.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State private var changeColor = false
    
    let buttons : [[Keys]] = [
        [.clear,.negative,.percent,.divide],
        [.seven,.eight,.nine,.multiply],
        [.four,.five,.six,.minus],
        [.one,.two,.three,.add],
        [.zero,.decimal,.equal]
    ]
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(changeColor ? Color("Num").opacity(0.4): Color.pink.opacity(0.2))
                    .scaleEffect(changeColor ? 1.5 : 1.0 )
                    .frame(width: 350,height: 250)
                    .animation(Animation.easeInOut.speed(0.17).repeatForever(), value: changeColor)
                    .onAppear(perform: {
                        self.changeColor.toggle()
                    })
                    .overlay(Text(value)
                        .bold()
                        .font(.system(size: 100))
                )
            }.padding()
            ForEach(buttons, id: \.self){row in
                HStack(spacing:10){
                    ForEach(row, id: \.self){ elem in
                        Button(action: {
                            self.didTap(button: elem)
                        }, label: {
                            Text(elem.rawValue)
                                .font(.system(size: 30))
                                .frame(width: self.getWidth(elem: elem),height: self.getHeight(elem: elem))
                                .background(elem.buttonColor)
                                .foregroundColor(.black)
                                .cornerRadius(self.getWidth(elem: elem) / 2)
                                .shadow(color: .purple.opacity(0.4), radius: 30)
                            
                        })
                        
                    }
                }.padding(.bottom, 4)
            }
        }
    }
    
    func getHeight(elem: Keys) -> CGFloat{
        return (UIScreen.main.bounds.width - (5*10)) / 5
    }
    
    func getWidth(elem: Keys) -> CGFloat{
        
        if elem == .zero{
            return (UIScreen.main.bounds.width - (5*10)) / 2
        }
        
        return (UIScreen.main.bounds.width - (5*10)) / 4
    }
    
    func didTap(button: Keys){
        switch button{
        case .add,.minus,.divide,.equal,.multiply:
            if button == .add{
                self.currentOperation = .add
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .minus{
                self.currentOperation = .minus
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .multiply{
                self.currentOperation = .multiply
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .divide{
                self.currentOperation = .divide
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .equal{
                let runningValue = self.runningNumber
                let currentValue = Int(self.value) ?? 0
                
                switch self.currentOperation{
                case .add: self.value = "\(runningValue + currentValue)"
                case .minus: self.value = "\(runningValue - currentValue)"
                case .multiply: self.value = "\(runningValue * currentValue)"
                case .divide: self.value = "\(runningValue / currentValue)"
                case .none :
                    break
                }
            }
            if button != .equal{
                self.value = "0"
            }
        case .clear:
            self.value = "0"
        case .decimal, .negative, .percent :
            break
        default :
            let number = button.rawValue
            if self.value == "0"{
                value = number
            }
            else {
                self.value = "\(self.value)\(number)"
            }
        }
    }
    
}



#Preview {
    KeyView()
}
