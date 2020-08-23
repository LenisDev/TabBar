//
//  Number+UIEdgeInset.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

extension Int {
    
    var uiEdgeInsets: UIEdgeInsets {
        return self.cgFloat.uiEdgeInsets
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self)
    }
    
}

extension CGFloat {
    
    var uiEdgeInsets: UIEdgeInsets {
        return UIEdgeInsets(top: self, left: self, bottom: self, right: self)
    }
    
}
