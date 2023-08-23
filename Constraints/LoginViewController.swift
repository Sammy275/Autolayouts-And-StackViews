//
//  ViewController.swift
//  Constraints
//
//  Created by Saim on 23/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientOnRootView()
        // Do any additional setup after loading the view.
    }
    
    func setGradientOnRootView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemGray.cgColor, UIColor.white.cgColor]
        gradientLayer.frame = view.frame
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        if let enteredEmail = emailTextField.text, let enteredPassword = passwordTextField.text {
            if enteredEmail == "samfan95@gmail.com" && enteredPassword == "123456" {
                performSegue(withIdentifier: "ToCustomDesignVC", sender: nil)
            }
        }
        
        clearInputFields()
    }
    
    func clearInputFields() {
        emailTextField.text = ""
        passwordTextField.text = ""
    }
}

