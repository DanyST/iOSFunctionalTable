//
//  Item.swift
//  FuncionalTable
//
//  Created by Luis Herrera Lillo on 02-11-18.
//  Copyright © 2018 Luis Herrera Lillo. All rights reserved.
//

import Foundation

struct Item {
    enum itemType {
        case fruit, vegetable, meet
    }
    
    let name: String
    let type: TypeItem
    let totalCost: Int
}
