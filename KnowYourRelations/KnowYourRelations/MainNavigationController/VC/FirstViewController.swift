//
//  ViewController.swift
//  KnowYourRelations
//
//  Created by vijayvir on 24/07/2021.
//

import UIKit

class FirstViewController: UIViewController {
    var viewModel: FirstViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // debugPrint("\(#function) at \(self)")
    }
    @IBAction func actionTap() {
        viewModel.didClickOnButton()
    }

}

extension FirstViewController : Storyboarded {
    static func storyboarded() -> (storyboardName: String, id: String) {
        ("Main","FirstViewController")
    }
    
    
}
