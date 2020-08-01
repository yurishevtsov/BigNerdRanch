//
//  UIImage+Mandala.swift
//  Mandala
//
//  Created by Yuri Shevtsov on 7/25/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit

enum ImageResource: String {
    case angry
    case confused
    case crying
    case goofy
    case happy
    case meh
    case sad
    case sleepy
}

extension UIImage {
    convenience init(resource: ImageResource) {
        self.init(named: resource.rawValue)!
    }
}
