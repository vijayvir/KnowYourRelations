//
//  MainNavigationViewModel.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import Foundation

final class MainNavigationViewModel : NSObject {
    //TODO: Add abstractions
    
    private var dependencies : DependencyContainer
    
    init(dependencies : DependencyContainer) {
        self.dependencies = dependencies
    }
}
