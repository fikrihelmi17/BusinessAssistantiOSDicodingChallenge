//
//  ViewController.swift
//  BusinessAssistant
//
//  Created by Fikri on 17/09/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit
import Kommunicate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userId = Kommunicate.randomId()
        
        let kmUser = KMUser()
        kmUser.userId = userId
        kmUser.displayName = "User"
        kmUser.applicationId = "1f765c238ca61efe8dbc09e2c4d1f179d"

        // Use this same API for login
        Kommunicate.registerUser(kmUser, completion: {
            response, error in
            guard error == nil else {return}
            print("Success")
        })
        
        let kmConversation = KMConversationBuilder()
            .withAgentIds( ["<AGENT_IDS>"])
            // Optional. A list of botIds. Go to Manage Bots section
            // (https://dashboard.kommunicate.io/bots/manage-bots) -> Copy botID
            .withBotIds(["mang-oleh-f6uxe"])
            // If you pass false, then a new conversation will be created every time.
            .useLastConversation(false)
            .build()

        Kommunicate.createConversation(conversation: kmConversation) { result in
            switch result {
            case .success(let conversationId):
                print("Conversation id: ",conversationId)
                Kommunicate.showConversationWith(
                    groupId: conversationId,
                    from: self,
                    completionHandler: { success in
                    print("conversation was shown")
                })
            // Launch conversation
            case .failure(let kmConversationError):
                print("Failed to create a conversation: ", kmConversationError)
            }
        }
        
        
    }
    
    


}

