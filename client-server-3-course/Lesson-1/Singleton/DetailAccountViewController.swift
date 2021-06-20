//
//  DetailAccountViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 20.06.2021.
//

import UIKit

class DetailAccountViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = Account.shared.name
        cashLabel.text = "\(Account.shared.cash)"
    }
    
}
