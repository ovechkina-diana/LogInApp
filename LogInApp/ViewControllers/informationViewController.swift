//
//  informationViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 17.12.2021.
//

import UIKit

class informationViewController: UIViewController {
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = user.person.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? moreInformationViewController else { return }
        moreInfoVC.user = user
    }
    
}
