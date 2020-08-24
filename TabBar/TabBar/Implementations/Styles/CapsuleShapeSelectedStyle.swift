//
//  CapsuleShapeSelectedStyle.swift
//  TabBar
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public struct CapsuleShapeSelectedStyle: Stylable {
    
    public var bgColor: UIColor { .red }
    
    public var tintColor: UIColor { .white }
    
    public var border: Border { .none }
    
    public var radius: Radius { Radius(size: 25, corners: [.allCorners]) }
    
    public init() { }
    
}
