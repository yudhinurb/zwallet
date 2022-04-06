//
//  RegisterViewController.swift
//  zwallet
//
//  Created by user215490 on 4/6/22.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var inputUsername: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var inputEmail: UITextField!
    
    var presenter: RegisterPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        let username: String = inputUsername.text ?? ""
        let email: String = inputEmail.text ?? ""
        let password: String = inputPassword.text ?? ""

        self.presenter?.register(username: username, email: email, password: password)
    }
    
    @IBAction func signInButtonAction(_ sender: Any) {
        self.presenter?.loginPage(viewController: self)
    }
}

extension RegisterViewController: RegisterViewProtocol {
    
}
