//
//  LoginViewController.swift
//  zwallet
//
//  Created by user217931 on 3/30/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var zwalletLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginDescLabel: UILabel!
    @IBOutlet weak var inputEmailField: UITextField!
    @IBOutlet weak var inputPasswordField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var envelopeImage: UIImageView!
    @IBOutlet weak var lockImage: UIImageView!
    @IBOutlet weak var emailLineView: UIView!
    @IBOutlet weak var passwordLineView: UIView!
    @IBOutlet weak var eyeSlashButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputEmailField.delegate = self
        inputPasswordField.delegate = self

        // Do any additional setup after loading the view.
        self.zwalletLabel.font = UIFont(name: "NunitoSans-Bold", size: 26)
        self.zwalletLabel.textColor = UIColor(named: "Primary")

        self.loginLabel.font = NunitoFonts.nunitoBold(sizeOf: 24)
        self.loginLabel.textColor = UIColor(named: "Black")

        self.loginDescLabel.font = NunitoFonts.nunitoRegular(sizeOf: 16)
        self.loginDescLabel.textColor = UIColor(named: "Gray")

        self.inputEmailField.font = NunitoFonts.nunitoRegular(sizeOf: 16)
        self.inputEmailField.textColor = UIColor(named: "Black")

        self.inputPasswordField.font = NunitoFonts.nunitoRegular(sizeOf: 16)
        self.inputPasswordField.textColor = UIColor(named: "Black")

        self.forgotPasswordButton.titleLabel?.font = NunitoFonts.nunitoRegular(sizeOf: 14)
        self.forgotPasswordButton.titleLabel?.textColor = UIColor(named: "Black")

        self.loginButton.titleLabel?.font = NunitoFonts.nunitoBold(sizeOf: 18)
    }
    
    
    //test komit cuk
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func eyeSlashButton(_ sender: UIButton) {
        if inputPasswordField.isSecureTextEntry {
            inputPasswordField.isSecureTextEntry = false
            eyeSlashButton.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            inputPasswordField.isSecureTextEntry = true
            eyeSlashButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
        
    }
    
}

enum NunitoFonts {
    static func nunitoRegular(sizeOf size : CGFloat) -> UIFont?{
        UIFont(name: "NunitoSans-Regular", size: size)
    }
    static func nunitoBold(sizeOf size : CGFloat) -> UIFont?{
        UIFont(name: "NunitoSans-Bold", size: size)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == inputEmailField {
            envelopeImage.tintColor = UIColor(named: "Primary")
            emailLineView.backgroundColor = UIColor(named: "Primary")
        } else if textField == inputPasswordField {
            lockImage.tintColor = UIColor(named: "Primary")
            passwordLineView.backgroundColor = UIColor(named: "Primary")
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == inputEmailField {
            if inputEmailField.text == "" {
                envelopeImage.tintColor = UIColor(named: "Gray")
                emailLineView.backgroundColor = UIColor(named: "Gray")
            }
        } else if textField == inputPasswordField {
            if inputPasswordField.text == "" {
                lockImage.tintColor = UIColor(named: "Gray")
                passwordLineView.backgroundColor = UIColor(named: "Gray")
            }
        }
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == inputEmailField {
            if inputEmailField.text == "" {
                envelopeImage.image = UIImage(systemName: "envelope" )
            } else {
                envelopeImage.image = UIImage(systemName: "envelope.fill" )
            }
        } else if textField == inputPasswordField {
            if inputPasswordField.text == "" {
                lockImage.image = UIImage(systemName: "lock" )
            } else {
                lockImage.image = UIImage(systemName: "lock.fill" )
            }
        }
    }
}

extension LoginViewController: LoginView{
    func showSuccess() {
        //N
    }
    
    func showError() {
        // N
    }
}


