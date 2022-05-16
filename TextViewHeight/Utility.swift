//
//  Utility.swift
//  TextViewHeight
//
//  Created by Appanna Yaragal on 16/05/22.
//

import Foundation
import UIKit

extension UIView {
    func applyRoundCorner(radius : Float, borderWidth : Float, backgroundColor : UIColor?) {
        self.layer.masksToBounds = true
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.backgroundColor = backgroundColor?.cgColor
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    func applyRoundCorner(radius : Float, borderWidth : Float, borderColor : UIColor?) {
        self.layer.masksToBounds = true
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor?.cgColor
        self.layer.cornerRadius = CGFloat(radius)
    }
}
