//
//  ActorDetailView.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 9/17/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
import UIKit

final class ActorDetailView: UIView {
    
     var viewModel: ActorDetailViewModel! {
        didSet {
            kvoToken = viewModel.observe(\.displayImage, options: [.new]) { [weak self] model, change in
                if let image = change.newValue {
                    self?.imageView.image = image
                }
            }
        }
    }
    
    private var kvoToken: NSKeyValueObservation?
    
    @IBOutlet private weak var imageView: UIImageView! {
        didSet {
            // TODO: D - Round the corners to circle, add a white border with a border width of 2, and add a black dropshadow with 30% opacity, 20.0 radius, and 20.0 y offset.
        }
    }
    
    deinit {
        kvoToken?.invalidate()
        kvoToken = nil
    }
}
