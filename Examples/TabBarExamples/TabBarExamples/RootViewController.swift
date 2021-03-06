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

    let tabView = TabBarView(data: TabBarViewModel(items: tabBarItemImageOnly)) { selectedItem in
        print(selectedItem)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .lightGray

        //tabView
            //.center(to: self.view)
            //.with(width: 350)

        tabView
            .style(RectStyle())
            .itemUnselectedStyle(RectStyle())
            .itemSelectedStyle(RectBottomBorderStyle())
            //.itemSelectedStyle(RectBorderStyle())
            //.itemSelectedStyle(RectBottomBorderStyle())

    }

}
