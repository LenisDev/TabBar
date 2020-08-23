//
//  UIView+Constraints.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {
    
    func add(to parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if !self.isDescendant(of: parentView) {
            parentView.addSubview(self)
        }
    }
    
    func sameSize(as parentView: UIView, margin: UIEdgeInsets = .zero) {
        
        add(to: parentView)
        
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: margin.left),
            self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -margin.right),
            self.topAnchor.constraint(equalTo: parentView.topAnchor, constant: margin.top),
            self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -margin.bottom)
        ])
        
    }
    
}
