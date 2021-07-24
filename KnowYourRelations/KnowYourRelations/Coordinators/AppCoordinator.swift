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
    
    var navigationController: UINavigationController?
    private let dependencyContainer: DependencyContainer
    init(navigationController: UINavigationController , dependencyContainer: DependencyContainer) {
        self.navigationController = navigationController
        self.dependencyContainer = dependencyContainer
    }
    
    func start() {
        print(#file)
        
        let some = ViewController.instantiateSB()
       // navigationController?.pushViewController(vc, animated: true)
    }
    
}
extension AppCoordinator : ViewControllerOwner {
    func vc_didTapOnFirstFunction() {
        let vc: SecondViewController = SecondViewController.instantiateSB()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func vc_didTapOnSecondFunction() {
        
    }
    
    
}
