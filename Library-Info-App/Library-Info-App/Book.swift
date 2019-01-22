//
//  Book.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation
class Book {
    var id: Int
    var name: String
    var category: String
    var stock: Int
    var price: Double
    
    
    init(id: Int, name: String, category: String, stock: Int, price: Double) {
        self.id = id
        self.name = name
        self.category = category
        self.stock = stock
        self.price = price
    }
    
    
}
