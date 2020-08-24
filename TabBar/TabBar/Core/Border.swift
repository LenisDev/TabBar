//
//  Border.swift
//  TabBar
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Custom data structure used to apply border on view
public struct Border {
    let color: UIColor
    let width: CGFloat
    let edges: [UIRectEdge]

    /// `Border` init
    /// - Parameters:
    ///   - color: color of border, defaults to black
    ///   - width: thickness of border, defaults to 1
    ///   - edges: edge on which border should be applied, defaults to all
    public init (color: UIColor = .black,
                 width: CGFloat = 1,
                 edges: [UIRectEdge] = [.all]) {

        self.color = color
        self.width = width
        self.edges = edges
    }
}

public extension Border {

    /// Provides neglegible `Border` value
    ///
    ///  - Defaults
    ///     - clear color, 0 thickness and all edges
    ///
    static var none: Border { Border(color: .clear, width: 0, edges: [.all]) }

}
