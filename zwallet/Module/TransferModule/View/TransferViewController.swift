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

        // Do any additional setup after loading the view.
    }

    @IBAction func transferButtonActioin(_ sender: Any) {
        let receiver: String = "1047"
        let amount: Int? = Int(amountLabel.text ?? "0")
        let notes: String = notesField.text ?? ""
        
        self.presenter?.transfer(receiver: receiver, amount: amount ?? 0, notes: notes)
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

extension TransferViewController: TransferView {
    func showReceiverData() {
        
    }
    
    func showAlertSuccess() {
        let successAlert = UIAlertController(title: "Sukses", message: "tes", preferredStyle: .alert)
        successAlert.addAction(UIAlertAction(title: "Kembali ke Home", style: .default, handler: { _ in
            self.presenter?.dissmisPage(vc: self)
        }))
        present(successAlert, animated: true, completion: nil)
    }
    
    func showError() {
        balanceLabel.textColor = .red
    }
    
}
