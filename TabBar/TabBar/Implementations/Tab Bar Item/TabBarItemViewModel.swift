//
//  TabBarItemViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public enum TabBarItemState {
    case selected
    case unSelected
}

public struct TabBarItemViewModel: BaseViewModel {
    public var id = String()
    
    let title: String?
    let image: UIImage?
    var state: TabBarItemState
    
    public init(id: String,
                title: String? = nil,
                image: UIImage? = nil,
                state: TabBarItemState = .unSelected) {
        
        self.id = id
        
        self.title = title
        self.image = image
        self.state = state
        
        if title == nil && image == nil {
            fatalError("title and image both can not be nil")
        }
    }
    
}
