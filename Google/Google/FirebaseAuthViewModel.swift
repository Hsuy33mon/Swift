//
//  FirebaseAuthViewModel.swift
//  Google
//
//  Created by Hannah on 19/7/2567 BE.
//

import Foundation
import UIKit
import Firebase
import GoogleSignIn

class FirebAuthViewModel: ObservableObject {
 
    init() {
        // Initialization
    }
 
    // BANANA CAT IS WATCHING YOU!!!
//    HomeWork
//    ContentView -> implement sign in with google button (Find UI from online source)
//    HomeScreen -> implement Image that shows current logged in User Profile Picture
//               -> implement User Name, Email, and User ID
    
    
    func signInWithGoogle(presenting: UIViewController, completion: @escaping (Error?) -> Void) {
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
 
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        GIDSignIn.sharedInstance.signIn(withPresenting: Application_utility.rootViewController) { user, error in
            if let error = error {
                DispatchQueue.main.async {
                    completion(error)
                }
                return
            }
 
            guard let user = user?.user, let idToken = user.idToken else { return }
            let accessToken = user.accessToken
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    DispatchQueue.main.async {
                        completion(error)
                    }
                    return
                }
 
                guard authResult != nil else {
                    DispatchQueue.main.async {
                        completion(NSError(domain: "FirebaseAuthError", code: -1, userInfo: nil))
                    }
                    return
                }
 
                UserDefaults.standard.set(true, forKey: "signIn")
            }
        }
    }
}
