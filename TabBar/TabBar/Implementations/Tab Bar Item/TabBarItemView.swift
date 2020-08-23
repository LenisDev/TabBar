//
//  TabBarItemView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public typealias SelectedTabItem = (TabBarItemViewModel) -> Void

public class TabBarItemView: BaseView<TabBarItemViewModel> {
    
    private(set) lazy var titleLbl = UILabel()
    private(set) lazy var imageView = UIImageView()
    
    private(set) lazy var labelImageSV = UIStackView(arrangedSubViews: [],
                                                     spacing: 10,
                                                     axis: .horizontal,
                                                     distribution: .fillProportionally)
    
    private(set) var onTap: SelectedTabItem
    
    public init(data: TabBarItemViewModel,
                onTap: @escaping SelectedTabItem) {
        
        self.onTap = onTap
        super.init(data: data)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupViews() {
        super.setupViews()
        
        if data.title == nil {
            self.setupImageViewLblOnly()
        } else if data.image == nil {
            self.setupTitleLblOnly()
        } else {
            // both can not be nil -> view model will not allow
            self.setupTitleLblAndImageView()
        }
        
        self.rootView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTapGesture)))
        
    }
    
    override func setupData() {
        super.setupData()
        
        self.titleLbl.text = data.title
        self.imageView.image = data.image
    }
    
}

// MARK: - Setups
extension TabBarItemView {
    
    private func setupTitleLblOnly() {
        titleLbl.textAlignment = .center
        titleLbl.sameSize(as: rootView)
    }
    
    private func setupImageViewLblOnly() {
        imageView.contentMode = .scaleToFill
        imageView.center(to: rootView)
    }
    
    private func setupTitleLblAndImageView() {
        labelImageSV.removeAllArrangedSubviews()
        
        labelImageSV.addArrangedSubview(titleLbl)
        labelImageSV.addArrangedSubview(imageView)
        
        labelImageSV.center(to: rootView)
    }
    
}

// MARK: - Extend
extension TabBarItemView {
    
    public func tintColor(_ color: UIColor) -> TabBarItemView {
        self.titleLbl.textColor = color
        self.imageView.tintColor = color
        
        return self
    }
    
    @objc private func onTapGesture() {
        onTap(self.data)
    }
    
}