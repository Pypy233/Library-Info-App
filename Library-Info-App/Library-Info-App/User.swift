//
//  User.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class User {
    
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


    public func getOverduePayment() -> Double {
        return overduePayment
    }
    
    public func getRecords() -> [String] {
        return [""]
    }
    
    public func getId() -> Int {
        return self.id
    }
    
}

