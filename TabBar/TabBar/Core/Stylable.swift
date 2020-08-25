//
//  Stylable.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Custom style used for styling views.
///
/// - Important
///  - It will override any existing property matching with `Stylable` property
///
public protocol Stylable {

    /// Background color
    var bgColor: UIColor { get }

    /// Tint color, applied on child views.
    var tintColor: UIColor { get }

    /// Border around view
    var border: Border { get }

    /// Corner radius on view
    var radius: Radius { get }

}
