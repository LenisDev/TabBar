//
//  TabBarItemViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public struct TabBarItemViewModel: BaseViewModel {
    public var id = UUID()
    
    let title: String?
    let image: UIImage?
    
}
