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
}

public struct Radius {
    let color: UIColor
    let size: CGFloat
    let corners: [UIRectCorner]
}
