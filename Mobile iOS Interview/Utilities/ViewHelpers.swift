//
//  ViewHelpers.swift
//  Mobile iOS Interview
//
//  Created by Ephraim Russo on 9/18/20.
//  Copyright © 2020 Ephraim Russo. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    static func nibInstance(in bundle: Bundle? = nil) -> Self? {
        let nib = UINib(nibName: String(describing: Self.self), bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? Self
    }
}
