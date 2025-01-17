//
//  SceneDelegate.swift
//  HelloUIKit
//
//  Created by Le Phuong Tien on 1/16/20.
//  Copyright © 2020 Fx Studio. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)

        let tabBarController = UITabBarController()
        let homeNavVC = UINavigationController(rootViewController: HomeViewController())
        let musicNavVC = UINavigationController(rootViewController: MusicsViewController())

        tabBarController.viewControllers = [homeNavVC, musicNavVC]

        window.rootViewController = tabBarController

        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
