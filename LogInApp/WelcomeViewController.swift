//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 14.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var helloLabel: UILabel!
    
    var rightName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, " + rightName

    }
    

    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
    
    
//    @IBAction func bactToLoginVC(_ sender: Any) {
//        
//        performSegue(withIdentifier: "showLoginVC", sender: self)
//    }
}
