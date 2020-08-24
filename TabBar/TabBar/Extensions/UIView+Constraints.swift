//
//  UIView+Constraints.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {

    /// Adds current view to `parentView`
    /// - Parameter parentView: Where current view should be added.
    func add(to parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false

        if !self.isDescendant(of: parentView) {
            parentView.addSubview(self)
        }
    }

    /// Adds current view to same size as parent view
    /// - Parameters:
    ///   - parentView: Where current view should be added.
    ///   - margin: margin between current view and parent view
    /// - Returns: Self
    @discardableResult
    func sameSize(as parentView: UIView, margin: UIEdgeInsets = .zero) -> Self {

        add(to: parentView)

        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: margin.left),
            self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -margin.right),
            self.topAnchor.constraint(equalTo: parentView.topAnchor, constant: margin.top),
            self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -margin.bottom)
        ])

        return self
    }

    /// Adds current view to vertically and horizontally center to `parentView`
    /// - Parameter parentView: Where current view should be added.
    /// - Returns: Self
    @discardableResult
    func center(to parentView: UIView) -> Self {

        add(to: parentView)

        NSLayoutConstraint.activate([
            self.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor)
        ])

        return self
    }

}

public extension UIView {

    /// Adds width and height on current view
    /// - Parameters:
    ///   - width: width value
    ///   - height: height value
    /// - Returns: Self
    @discardableResult
    func with(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {

        self.translatesAutoresizingMaskIntoConstraints = false

        if let unwrappedWidth = width {
            self.widthAnchor.constraint(equalToConstant: unwrappedWidth).isActive = true
        }

        if let unwrappedHeight = height {
            self.heightAnchor.constraint(equalToConstant: unwrappedHeight).isActive = true
        }

        return self
    }

}
