//
//  CALayer+Border.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension CALayer {

    func border(_ color: UIColor, width: CGFloat, edge: UIRectEdge) {

        let border = CALayer()

        switch edge {
        case UIRectEdge.top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: width)
            break
        case UIRectEdge.bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width)
            break
        case UIRectEdge.left:
            border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.height)
            break
        case UIRectEdge.right:
            border.frame = CGRect(x: self.frame.width - width, y: 0, width: width, height: self.frame.height)
            break
        default:
            self.borderWidth = width
            self.borderColor = color.cgColor
            
            return
        }

        border.backgroundColor = color.cgColor;

        self.addSublayer(border)
    }

}
