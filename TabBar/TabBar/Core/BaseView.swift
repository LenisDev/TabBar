//
//  BaseView.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Provides basic functionalities for data driven views.
/// It confirms to DesignableView, that provides design related functionalities.
///
/// # Main Features
///  - generic data confirming to `BaseViewModel`
///  - `setupViews`
///  - `setupData`
///
/// # Important
///  - Any view that  needs to designable and data driven, must use `BaseView` as it's parent class
///  - `rootView` should be considered as top view and all subview
///     at top level (hierarchy) should be added to `rootView`
///
public class BaseView<DATA: BaseViewModel>: UIView, DesignableView {

    // MARK: - Properties

    /// Generic data that confirms to `BaseViewModel`
    ///
    /// # Important
    /// - Everytime data is set, view will reset
    ///
    var data: DATA {
        didSet {
            self.initialize()
        }
    }

    /// Top view
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

    /// Used to setup views
    ///
    /// # Important
    /// - Called when data is set
    ///
    func setupViews() {
        self.rootView.subviews.forEach { $0.removeFromSuperview() }
        self.rootView.sameSize(as: self)
    }

    /// Used to setup data on views
    ///
    /// # Important
    /// - Called when data is set
    ///
    func setupData() {

    }

    @discardableResult
    public func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color

        return self
    }

}
