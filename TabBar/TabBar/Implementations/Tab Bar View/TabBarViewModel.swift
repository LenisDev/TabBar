//
//  TabBarViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public struct TabBarViewModel: BaseViewModel {
    public var id = UUID()
    
    private(set) var items = [TabBarItemViewModel]()
    
    public init(items: [TabBarItemViewModel]) {
        self.items = items
        
        if items.isEmpty {
            fatalError("There should be atleast one item.")
        }
    }
}

extension TabBarViewModel {
    
    var selectedItem: TabBarItemViewModel? {
        return items.first(where: { $0.state == .selected })
    }
    
    mutating func select(item: TabBarItemViewModel) {
        for (index, _) in items.enumerated() {
            if items[index].id == item.id {
                items[index].state = .selected
            } else {
                items[index].state = .unSelected
            }
        }
    }
    
}
