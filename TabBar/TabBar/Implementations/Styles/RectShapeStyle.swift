//
//  RectShapeStyle.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Provides rectangular shape style
public struct RectShapeStyle: Stylable {
    
    public var bgColor: UIColor { .lightGray }
    
    public var tintColor: UIColor { .black }
    
    public var border: Border { .none }
    
    public var radius: Radius { .none }
    
    public init() { }
}
