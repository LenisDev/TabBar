//
//  UIView+Radius.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {
    
    func add (radius: CGFloat, corner: UIRectCorner) {
        
        if corner == .allCorners {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = true
            
            return
        }
        
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: corner,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))
        
        let maskShapeLayer = CAShapeLayer()
        maskShapeLayer.path = path.cgPath
        self.layer.mask = maskShapeLayer
    }
    
}
