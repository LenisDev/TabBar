//
//  BaseView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public class BaseView<DATA: BaseViewModel>: UIView, DesignableView {
    
    // MARK: - Properties
    var data: DATA {
        didSet {
            self.initialize()
        }
    }
    
    // MARK: - Inits
    init(data: DATA) {
        self.data = data
        
        super.init(frame: .zero)
        
        self.initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups
    private func initialize() {
        self.setupViews()
        self.setupData()
    }
    
    func setupViews() {
        
    }
    
    func setupData() {
        
    }
    
}

// MARK: - Style
extension BaseView {
    
    func style(_ style: Stylable) -> Self {
        
        // bg color
        self.bgColor(style.bgColor)
            .border(style.border)
            .radius(style.radius)
        
        return self
    }
    
}
