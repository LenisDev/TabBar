//
//  RectBottomBorderStyle.swift
//  TabBarExamples
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import TabBar

struct RectBottomBorderStyle: Stylable {

    var bgColor: UIColor { .white }

    var tintColor: UIColor { .black }

    var border: Border { Border(color: .red, width: 2, edges: [.all]) }

    var radius: Radius { Radius(size: 5, corners: [.allCorners]) }

}
