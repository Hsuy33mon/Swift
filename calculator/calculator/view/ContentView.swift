//
//  ContentView.swift
//  calculator
//
//  Created by Hannah on 17/5/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.4),.blue.opacity(0.3)] ), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            KeyView()
        }
    }
}
#Preview {
        ContentView()
    }

