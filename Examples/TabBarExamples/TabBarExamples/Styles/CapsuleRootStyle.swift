//
//  CapsuleRootStyle.swift
//  TabBarExamples
//
//  Created by Manish on 15/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import TabBar

struct CapsuleRootStyle: Stylable {

    var bgColor: UIColor { .white }

    var tintColor: UIColor { .black }

    var border: Border { .none }

    var radius: Radius { Radius(size: tabBarRadius, corners: [.allCorners]) }

}


