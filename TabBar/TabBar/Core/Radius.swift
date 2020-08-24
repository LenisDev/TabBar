//
//  Radius.swift
//  TabBar
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Custom data structure used to apply radius on view
public struct Radius {
    let size: CGFloat
    let corners: [UIRectCorner]

    /// `Radius` init
    /// - Parameters:
    ///   - size: size of radius, default to 15
    ///   - corners: number of corners to used for applying border, default to all corners
    public init (size: CGFloat = 15,
                 corners: [UIRectCorner] = [.allCorners]) {

        self.size = size
        self.corners = corners
    }
}

public extension Radius {

    /// Provides neglegible `Radius` value
    ///
    ///  - Defaults
    ///     - 0 size and all corners
    ///
    static var none: Radius { Radius(size: 0, corners: [.allCorners]) }

}
