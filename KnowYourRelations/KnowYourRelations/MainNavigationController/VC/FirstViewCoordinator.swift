//
//  FirstViewCoordinator.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//
import UIKit
import Foundation

protocol FirstViewOwner {
    func fv_First()
    func fv_Second()
}

class FirstViewCoordinator : Coordinator {
 
    
    var childCoordinators: [Coordinator] = []
    var owner : FirstViewOwner?
    private var navigationController : UINavigationController
    private var coordinatorFactory: CoordinatorFactory
    private var firstViewModel :  FirstViewModel
    private var firstvc : FirstViewController?
    init(navigationController : UINavigationController , coordinatorFactory: CoordinatorFactory, mainTabBarViewModelFactory: FirstViewViewModelFactory) {
        self.navigationController = navigationController
        self.coordinatorFactory = coordinatorFactory
        firstViewModel =   mainTabBarViewModelFactory.makeFirstViewModel()
    }
    func start() {
        
         firstvc = FirstViewController.instantiateSB()
        firstvc?.viewModel = firstViewModel
        
        firstViewModel.onDidClickButton = {//[weak self] in
//            guard let strongSelf = self else {
//                print("Here")
//                return
//
//            }
            let secondiewCoordinator = self.coordinatorFactory.makeSecondiewCoordinator(navigationController: self.navigationController)
            secondiewCoordinator.owner = self
            secondiewCoordinator.start()
            self.childCoordinators = []
            self.childCoordinators.append(secondiewCoordinator)
            
           
        }
        navigationController.pushViewController(firstvc ?? UIViewController(), animated: true)
    }
}
extension FirstViewCoordinator : SecondViewOwner {
    func sv_First() {
        
    }
    
    func sv_Second() {
        
    }
    
    
}
