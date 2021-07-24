//
//  AppCoordinator.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 19/07/2021.
//

import Foundation
import UIKit

/// Entry point among all coordinators.
/// Determines, what flow must be shown based on the rules.
class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    private let window: UIWindow
    private let dependencyContainer: DependencyContainer
    init( window: UIWindow, dependencyContainer: DependencyContainer) {
       
        self.window = window
        self.dependencyContainer = dependencyContainer
    }
    
    func start() {
        childCoordinators = []
       // let some = FirstViewController.instantiateSB()
       // navigationController?.pushViewController(vc, animated: true)
        configureMainCoordinator()
    }
    func configureMainCoordinator(){
        
        let mainTabBarCoordinator = self.dependencyContainer.makeMainTabBarCoordinator(window: self.window)
        mainTabBarCoordinator.owner = self
        mainTabBarCoordinator.start()
        self.childCoordinators += [mainTabBarCoordinator]
    }
    
}

extension AppCoordinator : MainNavigationOwner {
    func mn_FirstTap() {
        
    }
    
    func mn_SeondTap() {
        
    }
    
    
}
