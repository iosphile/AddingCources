//
//  CardViewWithShadow.swift
//  CardViewForView
//
//  Created by Rajesh Kommana on 30/09/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import UIKit

@IBDesignable class CardViewWithShadow: UIView {
    
    @IBInspectable var shadowWidthCustom: CGFloat = 0
    @IBInspectable var shadowHeightCustom: CGFloat = 5
    @IBInspectable var shadowColorCustom: UIColor = UIColor.black
    @IBInspectable var cornerRadiusCustom: CGFloat = 0
    @IBInspectable var shadowOpacityCustom:Float = 1
    
    
    override func layoutSubviews() {
        
        self.layer.cornerRadius = cornerRadiusCustom
        self.layer.shadowColor = shadowColorCustom.cgColor
        self.layer.shadowOpacity = shadowOpacityCustom
        self.layer.shadowOffset = CGSize(width: shadowWidthCustom, height: shadowHeightCustom)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadiusCustom)
        layer.shadowPath = shadowPath.cgPath
    }
    
    

    
}
