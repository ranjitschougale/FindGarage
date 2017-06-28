//
//  CustomTextFiled.swift
//  FindGarage
//
//  Created by webwerks on 6/28/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class CustomView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        
    }
 
    
}
