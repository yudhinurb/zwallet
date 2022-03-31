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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.zwalletLabel.font = NunitoFonts.nunitoBold(sizeOf: 26)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

enum NunitoFonts {
    static func nunitoRegular(sizeOf size : CGFloat) -> UIFont?{
        UIFont(name: "NunitoSans-Regular", size: size)
    }
    static func nunitoBold(sizeOf size : CGFloat) -> UIFont?{
        UIFont(name: "NunitoSans-Bold", size: size)
    }
}
