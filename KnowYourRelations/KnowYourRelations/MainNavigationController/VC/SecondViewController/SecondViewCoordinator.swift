//
//  SecondViewCoordinator.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import Foundation
import UIKit
protocol SecondViewOwner {
    func sv_First()
    func sv_Second()
}


class SecondViewCoordinator : NSObject , Coordinator {
    var childCoordinators: [Coordinator] = []
    var owner: SecondViewOwner?
    private var navigationController : UINavigationController
    private var coordinatorFactory: CoordinatorFactory
    private var secondViewModel :  SecondViewModel
    
    init(navigationController : UINavigationController , coordinatorFactory: CoordinatorFactory, secondViewModelFactory: SecondViewModelFactory) {
        self.navigationController = navigationController
        self.coordinatorFactory = coordinatorFactory
        secondViewModel =   secondViewModelFactory.makeSecondViewModel()
    }

    func start() {
        let vc = SecondViewController.instantiateSB()
         vc.viewModel = secondViewModel
        navigationController.pushViewController(vc, animated: true)
    }
    

}
