//
//  Email.swift
//  Utilities
//
//  Created by Ahmed Yamany on 28/03/2025.
//
import Foundation

public struct Email {
    public var value: String

    public init(value: String) {
        self.value = value
    }
    
    public func validate() throws {
        
    }
}

extension Email: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}
