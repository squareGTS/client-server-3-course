//
//  AccountViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 20.06.2021.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendCashAction(_ sender: Any) {
        
        guard let cashString = cashTextField.text, let cash = Int(cashString) else { return }
        
        
        Account.shared.name = cashString
        Account.shared.cash = cash
        
    }
    
}

