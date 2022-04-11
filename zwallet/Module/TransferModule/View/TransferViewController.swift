//
//  TransferViewController.swift
//  zwallet
//
//  Created by user217931 on 4/7/22.
//

import UIKit

class TransferViewController: UIViewController {

    @IBOutlet weak var notesField: UITextField!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var amountLabel: UITextField!
    @IBOutlet weak var receiverName: UILabel!
    @IBOutlet weak var receiverImage: UIImageView!
    @IBOutlet weak var receiverPhoneNumber: UILabel!
    
    var presenter: TransferPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        if let homeVC = presentingViewController as? HomeViewController {
            DispatchQueue.main.async {
                homeVC.setupTableView()

                homeVC.presenter?.loadProfile()
                homeVC.presenter?.loadTransaction()
            }
        }
    }

    @IBAction func transferButtonActioin(_ sender: Any) {
        let receiver: String = "1047"
        let amount: Int? = Int(amountLabel.text ?? "0")
        let notes: String = notesField.text ?? ""
        
        self.presenter?.transfer(receiver: receiver, amount: amount ?? 0, notes: notes)
    }

}

extension TransferViewController: TransferView {
    func showReceiverData() {
        
    }
    
    func showAlertSuccess() {
        let successAlert = UIAlertController(title: "Transfer Success", message: "Transfer have been complited", preferredStyle: .alert)
        successAlert.addAction(UIAlertAction(title: "OK ;)", style: .default, handler: { _ in
            self.presenter?.dissmisPage(vc: self)
        }))
        present(successAlert, animated: true, completion: nil)
    }
    
    func showError() {
        let successAlert = UIAlertController(title: "Transfer Failed", message: "Your transfe cannot be proceed", preferredStyle: .alert)
        successAlert.addAction(UIAlertAction(title: "OK ;)", style: .default, handler: { _ in
            self.presenter?.dissmisPage(vc: self)
        }))
        present(successAlert, animated: true, completion: nil)
    }
    
}
