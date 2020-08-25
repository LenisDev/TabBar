//
//  TabBarView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Provides functionality for showing tab items and handeling sections.
///
/// # Confirms to
/// - `BaseView`, `DesignableView` and `UIView`
///
/// # Data Provider
/// - `TabBarViewModel` confirms to `BaseViewModel`
///
/// # Style supeert
/// - Any object confirming to `Stylable`
/// - Supports both selected and unSelected state style
///
public class TabBarView: BaseView<TabBarViewModel> {

    private(set) lazy var rootSV = UIStackView(arrangedSubViews: [],
                                               axis: .horizontal,
                                               distribution: .fillEqually)

    // MARK: - Properties
    private(set) lazy var itemViews = [TabBarItemView]()
    private(set) var onItemSelected: SelectedTabItem

    private(set) var itemUnselectedStyle: Stylable = CapsuleShapeStyle()
    private(set) var itemSelectedStyle: Stylable = CapsuleShapeSelectedStyle()

    // MARK: - Init

    /// Create TabBarView
    /// - Parameters:
    ///   - data: data to be shown in tab bar
    ///   - onItemSelected: Closure invoked when tab item is tapped.
    ///
    /// # Important
    /// - Always use `[weak self]` in `onItemSelected` to avoid referance cycle
    ///
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
        itemUnselectedStyle(itemUnselectedStyle)
        itemSelectedStyle(itemSelectedStyle)

        self.rootSV.add(arrangedSubViews: itemViews)
    }

}

// MARK: - Style
public extension TabBarView {

    /// Style applied when item's state is unselected
    /// - Parameter style: style for view
    /// - Returns: `TabBarView`
    @discardableResult
    func itemUnselectedStyle(_ style: Stylable) -> Self {

        self.itemUnselectedStyle = style

        itemViews.forEach { itemView in
            itemView.style(style)
        }

        return self
    }

    /// Style applied when item's state is selected
    /// - Parameter style: style for view
    /// - Returns: `TabBarView`
    @discardableResult
    func itemSelectedStyle(_ style: Stylable) -> Self {

        self.itemSelectedStyle = style

        itemViews.forEach { itemView in
            if itemView.data.state == .selected {
                itemView.style(style)
            }
        }

        return self
    }

}
