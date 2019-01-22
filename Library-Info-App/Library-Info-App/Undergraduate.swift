//
//  Undergraduate.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

class Undergraduate: User {
    override func accept(visitor: UserVisitor) {
        visitor.visit(undergraduate: self)
    }
}
