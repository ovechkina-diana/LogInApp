//
//  ViewController.swift
//  LogInApp
//
//  Created by Диана Овечкина on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var enterName: UITextField!
    @IBOutlet var enterPassword: UITextField!
    
    let user = User()
    let person = User.getPersonInformation()

    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
        for viewController in viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                let welcomeName = segue.destination as! WelcomeViewController
                welcomeName.rightName = user.login
            }
            else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! informationViewController
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func forgotName() {
        showAlert(title: "Forgot?", message: "Your name is User" )
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Forgot?", message: "Your password is Password" )
        
    }

    @IBAction func correctInput() {
        if (enterName.text != user.login ||
            enterPassword.text != user.password) {

            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: enterPassword)
            return }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        enterName.text = nil
        enterPassword.text = nil
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == enterName {
            enterPassword.becomeFirstResponder()
        } else {
            correctInput()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
}

