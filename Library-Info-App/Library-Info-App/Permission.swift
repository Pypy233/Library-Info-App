//
//  BorrowBookList.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class Permission {

    var userList: [User]
    
    init(userList: [User]) {
        self.userList = userList
    }
    
    public func accept(visitor: UserVisitor) {
        for u in self.userList {
            u.accept(visitor: visitor)
        }
    }

}
