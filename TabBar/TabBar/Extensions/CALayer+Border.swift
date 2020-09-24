//
//  CALayer+Border.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

extension CALayer {

    /// Helper function for adding border on current view using given values.
    /// - Parameters:
    ///   - color: border color
    ///   - width: border width
    ///   - edge: edge at which border should be drawn
    func border(_ color: UIColor, width: CGFloat, edge: UIRectEdge) {

        let border = CALayer()

        switch edge {
        case .top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: width)

        case .bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width)

        case .left:
            border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.height)

        case .right:
            border.frame = CGRect(x: self.frame.width - width, y: 0, width: width, height: self.frame.height)

        default:
            self.borderWidth = width
            self.borderColor = color.cgColor

            return
        }

        border.backgroundColor = color.cgColor

        self.addSublayer(border)
    }

}
