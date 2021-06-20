//
//  NotificationCenterViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 20.06.2021.
//

import UIKit

let backgroundChangeColorNotification = Notification.Name("backgroundChangeColorNotification")

class NotificationCenterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Subscribe to notification for self - backgroundChangeColorNotification
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: backgroundChangeColorNotification, object: nil)
    }
    
    @objc
    func changeColor(notification: Notification) {
        guard let color = notification.userInfo?["color"] as? UIColor else { return }
        view.backgroundColor = color
    }
    
    @IBAction func changeColorAction(_ sender: Any) {
        
        let  color = UIColor.yellow
        
        //send notification backgroundChangeColorNotification
        NotificationCenter.default.post(name: backgroundChangeColorNotification, object: nil, userInfo: ["color" : color])
        
    }
    //Unsubscribe from notifications self - backgroundChangeColorNotification
    deinit {
        NotificationCenter.default.removeObserver(self, name: backgroundChangeColorNotification, object: nil)
    }
    
    
}
