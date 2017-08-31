//
//  CustomImgShadows.swift
//  TeamUpApp
//
//  Created by Jose Tapizquent on 8/30/17.
//  Copyright © 2017 Jose Tapizquent. All rights reserved.
//

import UIKit

class CustomImgShadows: UIImageView {

    override func awakeFromNib() {
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.9
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
