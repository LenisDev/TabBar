//
//  Stylable.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public protocol Stylable {
    
    var bgColor: UIColor { get }
    
    var tintColor: UIColor { get }
    
    var border: Border { get }
    
    var radius: Radius { get }
    
}

public struct Border {
    let color: UIColor
    let width: CGFloat
    let edges: [UIRectEdge]
    
    public init (color: UIColor = .black,
                 width: CGFloat = 1,
                 edges: [UIRectEdge] = [.all]) {
        
        self.color = color
        self.width = width
        self.edges = edges
    }
}

public struct Radius {
    let size: CGFloat
    let corners: [UIRectCorner]
    
    public init (size: CGFloat = 15,
                 corners: [UIRectCorner] = [.allCorners]) {
        
        self.size = size
        self.corners = corners
    }
}
