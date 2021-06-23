//
//  FruitsViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 22.06.2021.
//

import UIKit

protocol FruitsViewControllerDelegate: AnyObject {
    
    func fruitDidSelect(_ fruit: String)
}

class FruitsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    weak var delegate: FruitsViewControllerDelegate?

    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.delegate = self
            tableview.dataSource = self
            tableview.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        }
    }
    
    let fruits = ["Apple", "Avocado", "Banana", "Kiwi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fruit = fruits[indexPath.row]
        
        delegate?.fruitDidSelect(fruit)
        
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = fruits[indexPath.row]
        
        return cell
        
        
    }
    
}
