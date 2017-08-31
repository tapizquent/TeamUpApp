//
//  CustomImgShadows.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/30/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit

@IBDesignable
class shadowImages: UIImageView {
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    override func awakeFromNib() {
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
    
}
