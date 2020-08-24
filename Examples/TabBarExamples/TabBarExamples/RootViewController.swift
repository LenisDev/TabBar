//
//  RootViewController.swift
//  TabBarExamples
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit
import TabBar

class RootViewController: UIViewController {

    let tabView = TabBarView(data: TabBarViewModel(items: [TabBarItemViewModel(id: UUID().description,
                                                                               title: "Tab 1",
                                                                               image: UIImage(systemName: "trash"),
                                                                               state: .selected),
                                                           TabBarItemViewModel(id: UUID().description,
                                                                               title: "Tab 2",
                                                                               image: nil)])) { selectedItem in
                                                                                print(selectedItem)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tabView
            .center(to: self.view)
            .with(width: 300)

        tabView
            .style(CapsuleShapeStyle())
//            .itemSelectedStyle(CapsuleShapeSelectedStyle())
        //            .bgColor(.red)
        //            .tintColor(.white)
        //            .radius(Radius(size: 20, corners: [.allCorners]))

    }

}
