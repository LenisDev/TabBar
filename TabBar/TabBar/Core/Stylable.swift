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
    var selectedBGColor: UIColor { get }
    
    var tintColor: UIColor { get }
    var selectedTintColor: UIColor { get }
    
    var border: Border { get }
    var selectedBorder: Border { get }
    
    var radius: Radius { get }
    var selectedRadius: Radius { get }
    
}

// MARK: - Border
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

public extension Border {
    
    static var none: Border { Border(color: .clear, width: 0, edges: [.all]) }
    
}

// MARK: - Radius
public struct Radius {
    let size: CGFloat
    let corners: [UIRectCorner]
    
    public init (size: CGFloat = 15,
                 corners: [UIRectCorner] = [.allCorners]) {
        
        self.size = size
        self.corners = corners
    }
}

extension Radius {
    
    static var none: Radius { Radius(size: 0, corners: [.allCorners]) }
    
}
