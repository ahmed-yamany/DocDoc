//
//  PhoneNumber.swift
//  Utilities
//
//  Created by Ahmed Yamany on 29/03/2025.
//
import Foundation

public struct PhoneNumber: Sendable {
    public let code: String?
    public let value: String

    public init(value: String, code: String? = nil) {
        self.value = value
        self.code = code
    }
}

extension PhoneNumber: ExpressibleByStringInterpolation {
    public init(stringLiteral value: String) {
        self.init(value: value)
    }
}
