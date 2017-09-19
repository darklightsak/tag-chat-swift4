//
//  GradientView.swift
//  Tag Chat
//
//  Created by Surasak Wattanapradit on 20/9/2560 BE.
//  Copyright © 2560 Surasak Wattanapradit. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) { //Color Literal
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var buttomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, buttomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0) //Top-Left //if Top-Right is (1,0) (X Axis)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1) //Buttom-Right
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0) //First Layer
    }
    
}
