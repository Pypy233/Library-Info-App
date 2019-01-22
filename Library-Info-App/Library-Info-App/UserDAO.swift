//
//  UserDAO.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class UserDAO: NSObject{
    private var user: User
    
    init(user: User) {
        self.user = user
    }
    
    public func updateUser(user: User) {
        // Update
        NotificationUtil().sendInfoUpdatedMessage(msg: "User info updated")
    }
    
    public func createUser(user: User) {
        
    }
    
    public func deleteUser() {
        
    }
    
    public func findUserById(id: Int) {
    
    }
    
    
}
