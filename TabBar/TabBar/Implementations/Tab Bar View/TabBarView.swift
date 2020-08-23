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
    
    // MARK: - Properties
    private(set) lazy var itemViews = [TabBarItemView]()
    private(set) var onItemSelected: SelectedTabItem
    private(set) var itemStyle: Stylable = CapsuleShapeStyle()
    
    // MARK: - Init
    public init(data: TabBarViewModel,
                onItemSelected: @escaping SelectedTabItem) {
        self.onItemSelected = onItemSelected
        
        super.init(data: data)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setups
    override func setupViews() {
        super.setupViews()
    
        self.rootSV.removeAllArrangedSubviews()
        self.rootSV.sameSize(as: rootView).with(height: 40)
    }
    
    override func setupData() {
        super.setupData()
        
        itemViews = data.items.map { TabBarItemView(data: $0) { [weak self] selectedItem in
            self?.data.select(item: selectedItem)
            
            self?.onItemSelected(selectedItem)
        }}
        
        // setup item style
        itemStyle(itemStyle)
        
        self.rootSV.add(arrangedSubViews: itemViews)
    }
    
}

// MARK: - Style
public extension TabBarView {
    
    @discardableResult
    func itemStyle(_ style: Stylable) -> Self {
        
        self.itemStyle = style
        
        itemViews.forEach { iv in
            iv.style(style)
        }
        
        return self
    }
    
}
