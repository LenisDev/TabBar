//
//  Number+UIEdgeInset.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension Int {

    /// returns `UIEdgeInsets` by making all sides same as current value
    var uiEdgeInsets: UIEdgeInsets {
        return self.cgFloat.uiEdgeInsets
    }

    /// retunrs `CGFloat` type with current value
    var cgFloat: CGFloat {
        return CGFloat(self)
    }

}

public extension CGFloat {

    /// returns `UIEdgeInsets` by making all sides same as current value
    var uiEdgeInsets: UIEdgeInsets {
        return UIEdgeInsets(top: self, left: self, bottom: self, right: self)
    }

}
