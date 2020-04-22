//
//  SceneDelegate.swift
//  CharSheet
//
//  Created by Yuri on 19/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        window = UIWindow(frame: UIScreen.main.bounds)
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        let router = Router()
        window?.rootViewController = router.mainController(approach: .viewCode)
        
        window?.makeKeyAndVisible()
    }
}

