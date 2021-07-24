//
//  MainNavigationCoordinatorr.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//
import UIKit
import Foundation

protocol MainNavigationOwner {
    func mn_FirstTap()
    func mn_SeondTap()
}


class  MainNavigationCoordinator : Coordinator {
 
    var childCoordinators: [Coordinator] = []
     var owner : MainNavigationOwner?
    private let coordinatorFactory: CoordinatorFactory
    private weak var window: UIWindow?
    private let mainNavigationViewModel : MainNavigationViewModel
    private  var mainNavigationContoller : MainNavigationController?
    
    init(window: UIWindow, coordinatorFactory: CoordinatorFactory, mainTabBarViewModelFactory: MainNavigationViewModelFactory ) {
        self.window = window
        self.coordinatorFactory = coordinatorFactory
        mainNavigationViewModel = mainTabBarViewModelFactory.makeMainNavigationViewModel()
    }
    
    
    func start() {
        childCoordinators = []
        mainNavigationContoller = MainNavigationController()
        mainNavigationContoller?.viewModel = mainNavigationViewModel
        self.window?.rootViewController = mainNavigationContoller
     
        let firstViewCoordinator = self.coordinatorFactory.makeFirstViewCoordinator(navigationController: mainNavigationContoller ?? UINavigationController())
        firstViewCoordinator.owner = self
        firstViewCoordinator.start()
        self.window?.makeKeyAndVisible()
    }
    
    
}
extension MainNavigationCoordinator : FirstViewOwner {
    func fv_First() {
        print(#file)
    }
    
    func fv_Second() {
        print(#file)
    }
    
    
}
