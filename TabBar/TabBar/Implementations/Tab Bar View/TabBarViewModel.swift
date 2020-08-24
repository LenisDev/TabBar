//
//  TabBarViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

/// Data provider for `TabBarView`
public struct TabBarViewModel: BaseViewModel {
    public var id = UUID()
    
    /// Items to be shown in `TabBarView`
    private(set) var items = [TabBarItemViewModel]()
    
    /// Creates `TabBarViewModel` instance with given data
    /// - Parameter items: data to be shown inside `TabBarView`
    ///
    /// # Important
    /// - `items` must not be empty
    ///
    /// # Error
    /// - `fatalError` occurs when items are provided as empty array
    ///
    public init(items: [TabBarItemViewModel]) {
        self.items = items
        
        if items.isEmpty {
            fatalError("There should be atleast one item.")
        }
    }
}

public extension TabBarViewModel {
    
    /// Item whose state is selected
    var selectedItem: TabBarItemViewModel? {
        return items.first(where: { $0.state == .selected })
    }
    
    /// Changes item's selection state to selected and unselected for all other items
    /// - Parameter item: item to be selected
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
