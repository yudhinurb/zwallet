//
//  RegisterViewController.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import UIKit

class RegisterViewController: UIViewController {

  
    @IBOutlet weak var formWrapper: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formWrapper.layer.cornerRadius = 50
        formWrapper.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        // Do any additional setup after loading the view.
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
