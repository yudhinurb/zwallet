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
    
    var presenter: RegisterPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
    }
    
    @IBAction func signInButtonAction(_ sender: Any) {
        self.presenter?.loginPage(viewController: self)
    }
}

extension RegisterViewController: RegisterViewProtocol {
    
}
