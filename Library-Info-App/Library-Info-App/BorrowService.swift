//
//  BorrowService.swift
//  Library-Info-App
//
//  Created by py on 2019/1/23.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class BorrowService {
    
    private var user: User
    
    private var method: BorrowMethod
    
    init(user: User, method: BorrowMethod) {
        self.user = user
        self.method = method
    }
    
}
