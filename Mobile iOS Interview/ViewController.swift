//
//  ViewController.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 8/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        
        if let actorDetailView = ActorDetailView.nibInstance() {
            
            let actor = Actor(
                givenName: "",
                familyName: "",
                createdAt: Date(),
                updatedAt: Date(),
                pictureUrl: URL(string: "https://qph.fs.quoracdn.net/main-qimg-7d4bea8272af059dbb3b8e9358fb3fd3")!,
                id: UUID().uuidString
            )
            
            actorDetailView.viewModel = .init(actor: actor)
            
            self.view = actorDetailView
        }        
    }
}

