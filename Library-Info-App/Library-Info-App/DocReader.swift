//
//  DocReaderFactory.swift
//  Library-Info-App
//
//  Created by py on 2019/1/21.
//  Copyright © 2019年 NJU.py. All rights reserved.
//

import Foundation

// Strategy Pattern implements the reader applying for different doc types

protocol Reader {
    func read(filename: String) -> String
}

enum DocType {
    case DOC, PDF, EPUB
}

class DocReader: Reader {
    func read(filename: String) -> String {
        print("Reading doc...")
        return "DOC"
    }
}

class PDFReader: Reader {
    func read(filename: String) -> String {
        print("Reading pdf...")
        return "PDF"
    }
}

class EPUBReader: Reader {
    func read(filename: String) -> String {
        print("Reading epub...")
        return "EPUB";
    }
}

class ReaderContext {
    private var reader: Reader?
    init(docType: DocType) {
        switch docType {
        case .DOC:
            reader = DocReader()
        case .PDF:
            reader = PDFReader()
        case .EPUB:
            reader = EPUBReader()
        }
    }

    
    func readDoc(filename: String) -> String {
        return (reader?.read(filename: filename)) ?? ""
    }
}

//// Test
//let filename = "test.doc"
//let docReader = ReaderContext(docType: .DOC)
//print(docReader.readDoc(filename: filename))





