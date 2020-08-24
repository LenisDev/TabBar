//
//  UIStackView+Init.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIStackView {

    /// Creates stack view with given parameter values.
    /// 
    /// - Parameters:
    ///   - arrangedSubViews: views to be added
    ///   - spacing: spacing between sub views, defaults to 0
    ///   - axis: vertical or horizontal presentation
    ///   - distribution: size and space distribution between views
    ///   - margin: margin between subviews and stack view
    convenience init(arrangedSubViews: [UIView],
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

    /// Removes all subviews from stackview
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

    /// Adds given views to stackview
    /// - Parameter arrangedSubViews: views to be added
    func add(arrangedSubViews: [UIView]) {
        arrangedSubViews.forEach { view in
            self.addArrangedSubview(view)
        }
    }

}
