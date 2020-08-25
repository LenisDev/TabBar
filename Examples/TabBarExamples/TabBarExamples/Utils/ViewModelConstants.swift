//
//  ViewModelConstants.swift
//  TabBarExamples
//
//  Created by Manish on 24/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import TabBar

let tabBarItemTitleImage = [TabBarItemViewModel(id: UUID().description,
                                                title: "Trash",
                                                image: UIImage(systemName: "trash"),
                                                state: .selected),
                            TabBarItemViewModel(id: UUID().description,
                                                title: "Paper Plane",
                                                image: UIImage(systemName: "paperplane"))]


let tabBarItemTitleOnly = [TabBarItemViewModel(id: UUID().description,
                                               title: "Trash",
                                               image: nil,
                                               state: .selected),
                           TabBarItemViewModel(id: UUID().description,
                                               title: "Paper Plane",
                                               image: nil)]

let tabBarItemImageOnly = [TabBarItemViewModel(id: UUID().description,
                                                title: nil,
                                                image: UIImage(systemName: "trash"),
                                                state: .selected),
                            TabBarItemViewModel(id: UUID().description,
                                                title: nil,
                                                image: UIImage(systemName: "paperplane"))]
