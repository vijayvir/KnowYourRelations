//
//  SecondViewController.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import UIKit
class SecondViewController: UIViewController {
    var viewModel : SecondViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
//MARK: Storyboarded
extension SecondViewController : Storyboarded {
    static func storyboarded() -> (storyboardName: String, id: String) {
        ("Main","SecondViewController")
    }
}
