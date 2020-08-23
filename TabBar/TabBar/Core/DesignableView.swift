//
//  DesignableView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

protocol DesignableView: UIView {
    
    @discardableResult
    func bgColor(_ color: UIColor) -> Self
    
    @discardableResult
    func border(_ color: UIColor, width: CGFloat, edges: [UIRectEdge]) -> Self
    
    @discardableResult
    func radius(_ size: CGFloat, corners: [UIRectCorner]) -> Self
    
}

extension DesignableView {
    
    @discardableResult
    func bgColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        
        return self
    }
    
    @discardableResult
    func border(_ color: UIColor, width: CGFloat, edges: [UIRectEdge]) -> Self {
        edges.forEach { edge in
            self.layer.border(color, width: width, edge: edge)
        }
        
        return self
    }
    
    @discardableResult
    func radius(_ size: CGFloat, corners: [UIRectCorner]) -> Self {
        corners.forEach { corner in
            self.add(radius: size, corner: corner)
        }
        
        return self
    }
    
}
