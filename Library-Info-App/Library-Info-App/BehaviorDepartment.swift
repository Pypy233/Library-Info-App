//
//  BehaviorDepartment.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class BehaviorDepartment: UserVisitor {
    override func visit(teacher: Teacher) {
        print("-----Records----")
        for i in teacher.getRecords() {
            print(i)
        }
    }
    
    override func visit(undergraduate: Undergraduate) {
        print("-----Records----")
        for i in undergraduate.getRecords() {
            print(i)
        }
    }
    
    override func visit(graduate: Graduate) {
        print("-----Records----")
        for i in graduate.getRecords() {
            print(i)
        }
    }
}
