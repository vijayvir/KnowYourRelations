//
//  ViewModelFactory.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 20/07/2021.
//

import Foundation


protocol  MainNavigationViewModelFactory {
    func makeMainNavigationViewModel() -> MainNavigationViewModel
}
protocol FirstViewViewModelFactory {
    func makeFirstViewModel() -> FirstViewModel
}
protocol SecondViewModelFactory {
    func makeSecondViewModel() -> SecondViewModel
}


final class ViewModelFactory {
    private let dependencyContainer: DependencyContainer
    
    init(dependencyContainer: DependencyContainer) {
        self.dependencyContainer = dependencyContainer
    }
}

extension ViewModelFactory : MainNavigationViewModelFactory {
    func makeMainNavigationViewModel() -> MainNavigationViewModel {
        return MainNavigationViewModel(dependencies: dependencyContainer)
    }
}
extension ViewModelFactory : FirstViewViewModelFactory {
    func makeFirstViewModel() -> FirstViewModel {
        return FirstViewModel(dependencies: dependencyContainer)
    }
}
extension ViewModelFactory : SecondViewModelFactory {
    func makeSecondViewModel() -> SecondViewModel {
        SecondViewModel(dependencies: dependencyContainer)
    }
    
    
}
