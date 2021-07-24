//
//  Storyboarded.swift
//  IOS_CoordinatorPattern
//
//  Created by vijayvir on 19/07/2021.
//

import Foundation
import UIKit
protocol Storyboarded : class {
    static func storyboarded()->(storyboardName : String,id: String)
}

extension Storyboarded where Self: UIViewController {
    static func instantiateSB() -> Self {
            let storyboard = UIStoryboard(name: storyboarded().storyboardName, bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: storyboarded().id)
            return vc as! Self
        }
}


//MARK: Example

class ExampleViewController : UIViewController {
    
}

extension ExampleViewController : Storyboarded{
    static func storyboarded() -> (storyboardName: String, id: String) {
        ("Main","ExampleViewController")
    }
}
