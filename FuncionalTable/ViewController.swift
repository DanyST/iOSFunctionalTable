//
//  ViewController.swift
//  FuncionalTable
//
//  Created by Luis Herrera Lillo on 02-11-18.
//  Copyright © 2018 Luis Herrera Lillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var model: [Item] = [] {
        didSet {
            // Cada vez que cambie mi modelo, recargamos la tabla
            tableView.reloadData()
            
            // 1ra forma
//            let values = model.map { $0.totalCost }
//            self.totalLabel.text = "\(values.reduce(0, +)) EUR"
            
            // 2da forma
            self.totalLabel.text = "\(model.reduce(0, { $0 + $1.totalCost })) EUR"
        }
    }
    
    // Mark - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    // Mark - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Añadimos datos a mi modelo
//        self.model = Repository.local.items
        self.model = Repository.local.nestedItems.flatMap { $0.compactMap{ $0 } }
    }
    
    // MARK: - IBActions
    @IBAction func showAll(_ sender: Any) {
        self.model = Repository.local.nestedItems.flatMap { $0.compactMap{ $0 } }
    }
    
    @IBAction func showFruits(_ sender: Any) {
        // Functional way
        self.model = Repository.local.nestedItems.flatMap { $0.compactMap{ $0 } }
            .filter { $0.type == .fruit } //items.filter { $0.type == .fruit }
        
        // Not functional way
//        var fruits: [Item] = []
//
//        for fruit in fruits {
//            if fruit.type == .fruit {
//                fruits.append(fruit)
//            }
//        }
//
//        self.model = fruits
    }
    
    @IBAction func showVegetables(_ sender: Any) {
        self.model = Repository.local.nestedItems.flatMap { $0.compactMap{ $0 } }
            .filter { $0.type == .vegetable }//items.filter { $0.type == .vegetable }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Obtenemos el modelo
        let item = model[indexPath.row]
        
        // Creamos la celda (o nos la dan por caché)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Sincronizamos vista y modelo
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "\(item.totalCost) EUR"
    
        // devolvemos la celda
        return cell
    }
    
    
}

