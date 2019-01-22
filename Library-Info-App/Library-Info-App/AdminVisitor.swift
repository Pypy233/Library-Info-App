//
//  AdminVisitor.swift
//  Library-Info-App
//
//  Created by py on 2019/1/22.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

class AdminVisitor: BookVisitor {
    
    func addBook(book: Book) {}
    
    func deleteBook(book: Book) {}
    
    func updateBook(book: Book) {}
    
    override func visit(teacher: Teacher) {
        
    }
    
}
