//
//  ViewExtension.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/30/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit

extension UIView {
    func addBackgroundImg(image: UIImage) {
        self.layer.backgroundColor = (UIColor(patternImage: image) as! CGColor)
    }
}
