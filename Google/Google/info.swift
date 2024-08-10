//
//  info.swift
//  Google
//
//  Created by Hannah on 8/8/2567 BE.
//
import Foundation
struct userinfo{
        var emailAddress: String?
        var fullName: String?
        var givenName: String?
        var familyName: String?
        var profilePicUrl: URL?
}


//import GoogleSignIn
//GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
//    guard error == nil else { return }
//    guard let signInResult = signInResult else { return }
//
//    let user = signInResult.user
//
//    let emailAddress = user.profile?.email
//
//    let fullName = user.profile?.name
//    let givenName = user.profile?.givenName
//    let familyName = user.profile?.familyName
//
//    let profilePicUrl = user.profile?.imageURL(withDimension: 320)
//}


