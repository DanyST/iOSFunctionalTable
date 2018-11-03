//
//  ViewController.swift
//  FuncionalTable
//
//  Created by Luis Herrera Lillo on 02-11-18.
//  Copyright © 2018 Luis Herrera Lillo. All rights reserved.
//

import UIKit

let items = [
    Item(name: "Papa", type: .vegetable, totalCost: 4),
    Item(name: "Pollo", type: .meet, totalCost: 12),
    Item(name: "Zanahoria", type: .vegetable, totalCost: 5),
    Item(name: "Manzana", type: .fruit, totalCost: 7),
    Item(name: "Durazno", type: .fruit, totalCost: 6),
    Item(name: "Lechuga", type: .vegetable, totalCost: 8),
    Item(name: "Pescado", type: .meet, totalCost: 9),
    Item(name: "Tomate", type: .vegetable, totalCost: 7)
]

class ViewController: UIViewController {
    
    // MARK: - Properties
    var model: [Item] = [] {
        didSet {
            //
        }
    }
    
    // Mark - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func showAll(_ sender: Any) {
    }
    
    @IBAction func showFruits(_ sender: Any) {
    }
    
    @IBAction func showVegetables(_ sender: Any) {
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
}

