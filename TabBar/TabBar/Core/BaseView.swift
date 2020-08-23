//
//  BaseView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public protocol BaseView: DesignableView {
    
    associatedtype DATA: BaseViewModel
    var data: DATA { get set }
    
    func style(_ style: Stylable) -> Self
    
}

extension BaseView {
    
    func style(_ style: Stylable) -> Self {
        
        // bg color
        self.bgColor(style.bgColor)
            .border(style.border)
            .radius(style.radius)
        
        return self
    }
    
}
