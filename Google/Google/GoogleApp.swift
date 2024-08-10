//
//  GoogleApp.swift
//  Google
//
//  Created by Hannah on 19/7/2567 BE.
//

import SwiftUI

@main
struct GoogleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("signIn") var isSingIn = false
    
    var body: some Scene {
        WindowGroup {
            if isSingIn {
                HomeScreen()
            } else {
                ContentView()
            }
        }
    }
}
