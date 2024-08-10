//
//  ContentView.swift
//  Google
//
//  Created by Hannah on 19/7/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = FirebAuthViewModel()
    
    var body: some View {
        VStack {
            Button {
                viewModel.signInWithGoogle(presenting: Application_utility.rootViewController) { error in
                    if error != nil {
                        print("Hsu Mon is Banana Cat")
                    }
                }
            } label: {
                Image("google")
                    
            }
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
