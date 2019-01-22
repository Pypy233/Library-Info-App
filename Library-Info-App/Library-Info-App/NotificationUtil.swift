//
//  NotificationUtil.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class NotificationUtil: NSObject {
    func sendInfoUpdatedMessage(msg: String) {
        let userInfo = ["msg": msg]
        let notification = NSNotification.init(name: NSNotification.Name(rawValue: "User"), object: self, userInfo: userInfo)
        // Post the notification
        NotificationCenter.default.post(notification as Notification)
    }
}
