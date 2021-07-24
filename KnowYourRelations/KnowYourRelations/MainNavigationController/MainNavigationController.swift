//
//  MainNavigationController.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//
import UIKit
import Foundation
class MainNavigationController : BaseNavigationController {
        
        // MARK: Lifecycle
    var viewModel : MainNavigationViewModel!
        override func viewDidLoad() {
            super.viewDidLoad()
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            debugPrint("\(#function) at \(self)")
        }
}
