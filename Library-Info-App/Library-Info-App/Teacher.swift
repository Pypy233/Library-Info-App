//
//  Teacher.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class Teacher: User {
    override func accept(visitor: UserVisitor) {
        visitor.visit(teacher: self)
    }
    
    override func getOverduePayment() -> Double {
        return 0
    }

}
