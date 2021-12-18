//
//  moreInformationViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 18.12.2021.
//

import UIKit

class moreInformationViewController: UIViewController {

    @IBOutlet var informationLabel: UILabel!
    
    let person = User.getPersonInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        informationLabel.text = "Hello!\nThere are some information about me🙃\n My name is \(person.name), I'm \(person.age).\n \(person.info)"
    }

}
