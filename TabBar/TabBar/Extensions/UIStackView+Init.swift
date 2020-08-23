//
//  UIStackView+Init.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIStackView {
    
    convenience init(arrangedSubViews:[UIView],
                     spacing: CGFloat = 0,
                     axis: NSLayoutConstraint.Axis = .vertical,
                     distribution: UIStackView.Distribution = .fillEqually,
                     margin: UIEdgeInsets = .zero) {
        self.init(arrangedSubviews: arrangedSubViews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        
        // margin
        self.layoutMargins = margin
        self.isLayoutMarginsRelativeArrangement = true
    }
    
}

public extension UIStackView {
    
    func removeAllArrangedSubviews() {
        
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        
        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        
        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
    
}
