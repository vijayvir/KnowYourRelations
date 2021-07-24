//
//  FirstViewModel.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import Foundation
class FirstViewModel: NSObject {
    var onDidClickButton : ( ()->())?


private var dependencies : DependencyContainer
init(dependencies : DependencyContainer) {
    self.dependencies = dependencies
}
    
    func didClickOnButton() {
        onDidClickButton?()
    }
}
