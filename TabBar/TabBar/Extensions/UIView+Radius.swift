//
//  UIView+Radius.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

extension UIView {

    /// Helper function for adding corner radius to current view using given parameter values
    /// - Parameters:
    ///   - radius: radius size
    ///   - corner: corner at which radius should be applied.
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
