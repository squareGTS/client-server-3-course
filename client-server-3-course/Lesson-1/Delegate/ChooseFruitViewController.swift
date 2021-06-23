//
//  ChooseFruitViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 22.06.2021.
//

import UIKit

class ChooseFruitViewController: UIViewController, FruitsViewControllerDelegate {
    

    @IBOutlet weak var fruitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func chooseFruitAction(_ sender: Any) {
        let fruitsVC = FruitsViewController()
        
        //Delegate object = fruitsViewController
        //Delegate self so object ChooseFruitViewController
        fruitsVC.delegate = self
        
        //let navVC = UINavigationController(rootViewController: : fruitsVC)
        
       // navigationController?.pushViewController(navVC, animated: true)
        
        //performSegue(withIdentifier: "showFruitsSegue", sender: nil)
    }
    
    //MARK: - FruitsViewControllerDelegate
    func fruitDidSelect(_ fruit: String) {
        self.fruitLabel.text = fruit
    }
}
