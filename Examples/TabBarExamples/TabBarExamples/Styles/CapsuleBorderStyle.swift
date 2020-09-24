//
//  CapsuleBorderStyle.swift
//  TabBarExamples
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import TabBar

struct CapsuleBorderStyle: Stylable {

    var bgColor: UIColor { .lightGray }

    var tintColor: UIColor { .systemRed }

    var border: Border { Border(color: .systemRed, width: 1, edges: [.all]) }

    var radius: Radius { Radius(size: tabBarRadius, corners: [.allCorners]) }

}

