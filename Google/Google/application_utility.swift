//
//  application_utility.swift
//  Google
//
//  Created by Hannah on 19/7/2567 BE.
//

import Foundation
import UIKit

final class Application_utility {
    static var rootViewController: UIViewController{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else{
            return .init()
        }
        return root
    }
}
