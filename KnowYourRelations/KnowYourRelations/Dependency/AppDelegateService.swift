//
//  AppDelegateService.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import Foundation
//
//  AppDelegateService.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 19/07/2021.
//


import Foundation
import UIKit

/// Responsible for handling all business logic, that should be established at AppDelegate.
class AppDelegateService {
    
    // MARK: Public properties
    
    /// root coordinator
    var appCoordinator: AppCoordinator!
    /// root window of the app
    private var dependencyContainer: DependencyContainer!
    
    let window: UIWindow
    
    // MARK: Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    // MARK: Public methods
    
    func setupAppCoordinator() {
//        window.rootViewController = BaseNavigationController()
//        guard let rootNavigationController = window.rootViewController as? UINavigationController else {
//            fatalError("Root viewController must be inherited from UINavigationController")
//        }
        dependencyContainer = DependencyContainer()

        appCoordinator = AppCoordinator( window: window, dependencyContainer: dependencyContainer)
        appCoordinator.start()
        window.makeKeyAndVisible()
    }
}
