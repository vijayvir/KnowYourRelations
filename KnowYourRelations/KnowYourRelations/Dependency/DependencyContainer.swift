//
//  DependencyContainer.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 20/07/2021.
//

import UIKit

class DependencyContainer: NSObject , B {
    func a() {
        
    }
    
 
    

}

protocol A {
    func a()
}

protocol B : A {
    //confirm by 
    //Dependecy container
    
}
