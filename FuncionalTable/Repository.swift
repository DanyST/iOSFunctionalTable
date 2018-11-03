//
//  Repository.swift
//  FuncionalTable
//
//  Created by Luis Herrera Lillo on 03-11-18.
//  Copyright © 2018 Luis Herrera Lillo. All rights reserved.
//

import Foundation

struct Repository {
    static let local = LocalFactory()
}

struct LocalFactory {
    let items = [
        Item(name: "Papa", type: .vegetable, totalCost: 4),
        Item(name: "Pollo", type: .meat, totalCost: 12),
        Item(name: "Zanahoria", type: .vegetable, totalCost: 5),
        Item(name: "Manzana", type: .fruit, totalCost: 7),
        Item(name: "Durazno", type: .fruit, totalCost: 6),
        Item(name: "Lechuga", type: .vegetable, totalCost: 8),
        Item(name: "Pescado", type: .meat, totalCost: 9),
        Item(name: "Tomate", type: .vegetable, totalCost: 7)
    ]
    
    let nestedItems: [[Item?]] = [
        [
            Item(name: "Papa", type: .vegetable, totalCost: 4),
            Item(name: "Zanahoria", type: .vegetable, totalCost: 5),
            Item(name: "Lechuga", type: .vegetable, totalCost: 8),
            Item(name: "Tomate", type: .vegetable, totalCost: 7)
        ],
        [
            Item(name: "Pollo", type: .meat, totalCost: 12),
            Item(name: "Pescado", type: .meat, totalCost: 9),
            nil
        ],
        [
            Item(name: "Manzana", type: .fruit, totalCost: 7),
            Item(name: "Durazno", type: .fruit, totalCost: 6),
            nil
        ]
    ]
}

