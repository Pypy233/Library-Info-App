//
//  BorrowMethod.swift
//  Library-Info-App
//
//  Created by py on 2019/1/23.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

extension BorrowMethod {
    func commonBorrowMethod() -> BorrowMethod {
        let method = BorrowMethod(teacherBookLimit: 10, studentBookLimit: 5)
        return method
    }
    
    func studentBorrowMoreBooksMethod() -> BorrowMethod {
        let method = BorrowMethod(teacherBookLimit: 10, studentBookLimit: 10)
        return method
    }
    
    func teacherBorrowMoreBooksMethod() -> BorrowMethod {
        let method = BorrowMethod(teacherBookLimit: 20, studentBookLimit: 5)
        return method
    }
}

class BorrowMethod {
    
    public var teacherBookLimit: Int
    
    public var studentBookLimit: Int
    
    init(teacherBookLimit: Int, studentBookLimit: Int) {
        self.teacherBookLimit = teacherBookLimit
        self.studentBookLimit = studentBookLimit
    }
    
    public func borrowBook(bookList: [Book], user: User) {
        
    }
    
}

// let testMethod = BorrowMethod(teacherBookLimit: 10, studentBookLimit: 5).studentBorrowMoreBooksMethod().teacherBorrowMoreBooksMethod()
