//
//  BaseViewModel.swift
//  TabBar
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public protocol BaseViewModel {
    
    associatedtype ID: Equatable
    var id: ID { get set }
    
}
