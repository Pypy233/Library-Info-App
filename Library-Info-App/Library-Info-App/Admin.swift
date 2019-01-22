//
//  AdminVisitor.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class Admin: UserVisitor {
    
    func addBook(book: Book) {}
    
    func deleteBook(book: Book) {}
    
    func updateBook(book: Book) {}
    
    override func visit(teacher: Teacher) {
        print("Payment:", teacher.getOverduePayment())
        print("Records: ")
        for i in teacher.getRecords() {
            print(i)
        }
    }
    
    override func visit(undergraduate: Undergraduate) {
        print("Payment:", undergraduate.getOverduePayment())
        print("Records: ")
        for i in undergraduate.getRecords() {
            print(i)
        }
    }

    override func visit(graduate: Graduate) {
        print("Payment:", graduate.getOverduePayment())
        print("Records: ")
        for i in graduate.getRecords() {
            print(i)
        }
    }
    
    func observeUserInfoUpdated() {
        NotificationCenter.default.addObserver(self, selector: Selector("Accept notification"), name: NSNotification.Name(rawValue: "User information updated"), object: nil)
    }
    
    func acceptNotification(notification: NSNotification) {
        _ = notification.userInfo!
        print("Received the user updated info....")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
