//
//  TabBarView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public class TabBarView: BaseView<TabBarViewModel> {
    
    private(set) lazy var rootSV = UIStackView(arrangedSubViews: [],
                                               axis: .horizontal,
                                               distribution: .fillEqually)
        
    override func setupViews() {
        super.setupViews()
    
        self.rootSV.removeAllArrangedSubviews()
        data.items.forEach { item in
            self.rootSV.addArrangedSubview(TabBarItemView(data: item) { [weak self] selectedItem in
                self?.data.select(item: selectedItem)
            })
        }
        
        self.rootSV.sameSize(as: rootView).with(height: 40)
    }
    
}
