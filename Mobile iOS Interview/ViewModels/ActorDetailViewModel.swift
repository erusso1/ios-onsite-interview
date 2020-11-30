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
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyyy"
        return formatter
    }()
    
    init(actor: Actor) {
        self.actor = actor
        super.init()
        self.refreshDisplayImage()
    }
    
    // TODO: A - Implement me
    /// Returns the actor's full name for display.
    var displayName: String { "\(actor.givenName) \(actor.familyName)" }
    
    // TODO: B - Implement me
    /// Returns the actor's career start date for display in the following format: "January 7, 1981"
    var displayCareerStartDate: String {
        dateFormatter.string(from: actor.createdAt)
    }
    
    /// Returns the actor's image for display. View's are expected to subscribe to
    /// changes in this propery via KVO.
    @objc dynamic var displayImage: UIImage?
    
    // TODO: C - Implement me
    /// Refreshes the value of `displayImage` by fetching the `actor`'s `pictureUrl`.
    func refreshDisplayImage() {
        
        let task = URLSession.shared.dataTask(with: actor.pictureUrl) { [weak self] (data, response, error) in
            guard let data = data else { return }
            
            DispatchQueue.main.async { [weak self] in
                self?.displayImage = UIImage(data: data)
            }
        }
        
        task.resume()
    }
    
}
