//
//  AppDelegate.swift
//  BusinessAssistant
//
//  Created by Fikri on 17/09/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit
import Kommunicate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Kommunicate.setup(applicationId: "1f765c238ca61efe8dbc09e2c4d1f179d")
        KMMessageStyle.receivedBubble.color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        KMMessageStyle.sentBubble.color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        Kommunicate.defaultConfiguration.hideFaqButtonInConversationList = true
        Kommunicate.defaultConfiguration.hideFaqButtonInConversationView = true
        Kommunicate.defaultConfiguration.chatBar.optionsToShow = .none
        Kommunicate.defaultConfiguration.hideAudioOptionInChatBar = true
        Kommunicate.defaultConfiguration.hideRightNavBarButtonForConversationView = true
        
        let kmNavigationBarProxy = UINavigationBar.appearance(whenContainedInInstancesOf: [KMBaseNavigationViewController.self])
        
        kmNavigationBarProxy.isTranslucent = true
        kmNavigationBarProxy.barTintColor = #colorLiteral(red: 0.2362456592, green: 0.4732301671, blue: 0.8235294223, alpha: 1)
        kmNavigationBarProxy.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

