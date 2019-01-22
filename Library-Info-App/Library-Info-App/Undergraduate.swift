//
//  Undergraduate.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

class Undergraduate: User {
    private var id: Int
    
    private var name: String
    
    private var bio: String
    
    private var overduePayment: Double
    
    init(id: Int, name: String, bio: String, overduePayment: Double) {
        self.id = id
        self.name = name
        self.bio = bio
        self.overduePayment = overduePayment
    }
    
    override func accept(visitor: BookVisitor) {
        visitor.visit(undergraduate: self)
    }
    
}
