//
//  Graduate.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class Graduate: User {
    override func accept(visitor: UserVisitor) {
        visitor.visit(user: self)
    }
}
