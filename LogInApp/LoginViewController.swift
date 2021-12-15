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
    
    var correctName = "User"
    var correctPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeName = segue.destination as! WelcomeViewController
        welcomeName.rightName = correctName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (touches.first) != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }

    @IBAction func forgotName() {
        showAlert(title: "Forgot?", message: "Your name is User" )
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Forgot?", message: "Your password is Password" )
        
    }

    @IBAction func correctInput() {
        if (enterName.text != correctName && enterPassword.text != correctPassword) {
            showAlert(title: "Wrong input", message: "Try again!")
            print("Wrong")
            return }
        else {
            print("Right")
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
}

