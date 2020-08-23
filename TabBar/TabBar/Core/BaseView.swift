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
    
    private(set) var rootView = UIView()
    
    // MARK: - Inits
    public init(data: DATA) {
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
        self.rootView.subviews.forEach { $0.removeFromSuperview() }
        self.rootView.sameSize(as: self)
    }
    
    func setupData() {
        
    }
    
}
