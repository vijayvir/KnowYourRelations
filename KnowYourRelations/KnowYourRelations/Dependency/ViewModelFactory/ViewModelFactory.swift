//
//  ViewModelFactory.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 20/07/2021.
//

import Foundation

final class ViewModelFactory {
    private let dependencyContainer: DependencyContainer
    
    init(dependencyContainer: DependencyContainer) {
        self.dependencyContainer = dependencyContainer
    }
}
