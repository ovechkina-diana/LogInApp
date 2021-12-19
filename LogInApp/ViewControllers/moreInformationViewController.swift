//
//  moreInformationViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 18.12.2021.
//

import UIKit

class moreInformationViewController: UIViewController {

    @IBOutlet var informationLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        informationLabel.text = "Hello!\nThere are some information about me🙃\n My name is \(user.person.name), I'm \(user.person.age).\n \(user.person.info)"
    }
}
