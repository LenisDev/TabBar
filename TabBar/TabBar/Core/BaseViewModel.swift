//
//  BaseViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

/// Data structure used as base for all view models
public protocol BaseViewModel {

    associatedtype IDEQUATABLE: Equatable

    /// An unique identifire
    /// - Used to compare items
    var id: IDEQUATABLE { get set }

}
