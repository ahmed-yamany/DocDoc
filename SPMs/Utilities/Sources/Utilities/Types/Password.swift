//
//  File.swift
//  Utilities
//
//  Created by Ahmed Yamany on 29/03/2025.
//

import Foundation

public struct Password {
    public let value: String

    public init(value: String) {
        self.value = value
    }
    
    public func validate() throws {
        try PasswordValidators().validate(self)
    }
}

extension Password: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}
