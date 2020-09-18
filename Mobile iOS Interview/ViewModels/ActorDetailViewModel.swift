//
//  ActorDetailViewModel.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 9/17/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
import UIKit

final class ActorDetailViewModel: NSObject {
    
    private let actor: Actor
    
    init(actor: Actor) {
        self.actor = actor
        super.init()
        self.refreshDisplayImage()
    }
    
    // TODO: B - Implement me
    /// Returns the actor's full name for display.
    var displayName: String { "" }
    
    // TODO: C - Implement me
    /// Returns the actor's career start date for display in the following format: "January 7, 1981"
    var displayCareerStartDate: String { "" }
    
    /// Returns the actor's image for display. View's are expected to subscribe to
    /// changes in this propery via KVO.
    @objc dynamic var displayImage: UIImage?
    
    // TODO: D - Implement me
    /// Refreshes the value of `displayImage` by fetching the `actor`'s `pictureUrl`.
    func refreshDisplayImage() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            self?.displayImage = UIImage(systemName: "photo.fill")
        }
    }
    
}
