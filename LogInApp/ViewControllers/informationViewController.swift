//
//  informationViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 17.12.2021.
//

import UIKit

class informationViewController: UIViewController {
    let person = User.getPersonInformation()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = person.name
    }
}
