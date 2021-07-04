//
//  StorageViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 03.07.2021.
//

import Foundation
import UIKit

class StorageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func useUserDefaults() {
        let token = UserDefaults.standard.string(forKey: "vkToken")
        
        let pincode = UserDefaults.standard.string(forKey: "pincode")
        
        UserDefaults.standard.setValue("1245-fewfe-2323-2424", forKey: "vkToken")
        
        UserDefaults.standard.set("12345", forKey: "pincode")
        
        print(token)
        
        print(pincode)
    }
}
