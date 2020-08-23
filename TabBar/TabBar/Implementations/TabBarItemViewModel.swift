//
//  TabBarItemViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public struct TabBarItemViewModel: BaseViewModel {
    public var id = String()
    
    let title: String?
    let image: UIImage?
    
    public init(id: String,
                title: String? = nil,
                image: UIImage? = nil) {
        
        self.id = id
        
        self.title = title
        self.image = image
        
        if title == nil && image == nil {
            fatalError("title and image both can not be nil")
        }
    }
    
}
