//
//  DependencyContainer.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 20/07/2021.
//

import UIKit

class DependencyContainer: NSObject {
private lazy var viewModelFactory = ViewModelFactory(dependencyContainer: self)
}

extension DependencyContainer: CoordinatorFactory {
    func makeSecondiewCoordinator(navigationController: UINavigationController) -> SecondViewCoordinator {
        SecondViewCoordinator(navigationController: navigationController, coordinatorFactory: self, secondViewModelFactory: viewModelFactory)
    }
    
    func makeFirstViewCoordinator(navigationController: UINavigationController) -> FirstViewCoordinator {
        FirstViewCoordinator(navigationController: navigationController, coordinatorFactory: self, mainTabBarViewModelFactory: viewModelFactory)
    }
    
    func makeMainTabBarCoordinator(window: UIWindow) -> MainNavigationCoordinator {
        return MainNavigationCoordinator(window: window, coordinatorFactory: self, mainTabBarViewModelFactory: viewModelFactory)
    }
    

}



//MARK: CoordinatorFactory
protocol CoordinatorFactory {
    func makeMainTabBarCoordinator(window: UIWindow) -> MainNavigationCoordinator
    
    func makeFirstViewCoordinator(navigationController : UINavigationController) -> FirstViewCoordinator
    
    func makeSecondiewCoordinator(navigationController : UINavigationController) -> SecondViewCoordinator
}
