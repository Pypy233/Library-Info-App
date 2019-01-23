//
//  BorrowService.swift
//  Library-Info-App
//
//  Created by py on 2019/1/23.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

enum MethodType {
    case Common, Teacher, Student
}

class BorrowService {
    
    private var user: User
    
    private var bookList: [Book]
    
    private var methodType: MethodType
    
    private var borrowMethod: BorrowMethod?
    
    init(user: User, bookList: [Book], methodType: MethodType) {
        self.user = user
        self.bookList = bookList
        self.methodType = methodType
        switch methodType {
        case .Common:
            self.borrowMethod = CommonBorrowMethod()
        case .Teacher:
            self.borrowMethod = TeacherBorrowMethod()
        case .Student:
            self.borrowMethod = StudentBorrowMethod()
        }
    }
    
}
