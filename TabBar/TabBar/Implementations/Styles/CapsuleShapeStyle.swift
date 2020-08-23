//
//  CapsuleShapeStyle.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public struct CapsuleShapeStyle: Stylable {
    
    public var bgColor: UIColor { .lightGray }
    
    public var selectedBGColor: UIColor { .gray }
    
    public var tintColor: UIColor { .black }
    
    public var selectedTintColor: UIColor { .white }
    
    public var border: Border { .none }
    
    public var selectedBorder: Border { .none }
    
    public var radius: Radius { .none }
    
    public var selectedRadius: Radius { Radius(size: 25, corners: [.allCorners]) }
    
    public init() { }
}
