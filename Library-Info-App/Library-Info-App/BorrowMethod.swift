//
//  BorrowMethod.swift
//  Library-Info-App
//
//  Created by py on 2019/1/23.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

protocol BorrowMethod {
    func borrowBooks(user: User, bookList: [Book])
}

class CommonBorrowMethod: BorrowMethod {
    func borrowBooks(user: User, bookList: [Book]) {
        print("Common borrow books...")
    }
}

class StudentBorrowMethod: BorrowMethod {
    var bookLimit = 5
    func borrowBooks(user: User, bookList: [Book]) {
        print("Student borrow books...")
    }
}

class TeacherBorrowMethod: BorrowMethod {
    var bookLimit = 10
    func borrowBooks(user: User, bookList: [Book]) {
        print("Teacher borrow books...")
    }
}
