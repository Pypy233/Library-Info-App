//
//  FinanceDepartment.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class FinanceDepartment: UserVisitor {
    override func visit(teacher: Teacher) {
        print("Payment: ", teacher.getOverduePayment())
    }
    
    override func visit(graduate: Graduate) {
        print("Payment: ", graduate.getOverduePayment())
    }
    
    override func visit(undergraduate: Undergraduate) {
        print("Payment: ", undergraduate.getOverduePayment())
    }
}
