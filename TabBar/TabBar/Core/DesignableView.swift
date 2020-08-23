//
//  DesignableView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public protocol DesignableView: UIView {
    
    @discardableResult
    func bgColor(_ color: UIColor) -> Self
    
    @discardableResult
    func border(_ value: Border) -> Self
    
    @discardableResult
    func radius(_ value: Radius) -> Self
    
}

extension DesignableView {
    
    @discardableResult
    public func bgColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        
        return self
    }
    
    @discardableResult
    public func border(_ value: Border) -> Self {
        value.edges.forEach { edge in
            self.layer.border(value.color, width: value.width, edge: edge)
        }
        
        return self
    }
    
    @discardableResult
    public func radius(_ value: Radius) -> Self {
        value.corners.forEach { corner in
            self.add(radius: value.size, corner: corner)
        }
        
        return self
    }
    
}
