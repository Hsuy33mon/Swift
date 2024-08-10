//
//  HomeScreen.swift
//  Google
//
//  Created by Hannah on 19/7/2567 BE.
//

import SwiftUI
import GoogleSignIn
import FirebaseAuth

struct HomeScreen: View {
    @State private var uinfo = userinfo()
    
    var body: some View {
        VStack {
            if let profilePicUrl = Auth.auth().currentUser?.photoURL {
                           AsyncImage(url: profilePicUrl) { image in
                               image.resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                           } placeholder: {
                               ProgressView()
                           }
                       }

            Text("User name: \(Auth.auth().currentUser?.displayName ?? "Unknown")")
            Text("Email: \(Auth.auth().currentUser?.email ?? "No Email")")
            // Optional unwrapping
            if let userName = Auth.auth().currentUser?.displayName {
                Text("\(userName)")
            }
            Button {
                do {
                    try? Auth.auth().signOut()
                    UserDefaults.standard.set(false, forKey: "signIn")
                }catch (let error){
                    print(error.localizedDescription)
                }
            } label: {
                Text("Sign Out")
            }
        }
    }
}


#Preview {
    
    HomeScreen()
}
