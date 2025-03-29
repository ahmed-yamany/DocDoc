//
//  PasswordLengthValidator.swift
//  Shared
//
//  Created by Ahmed Yamany on 06/11/2024.
//

import Foundation

public struct PasswordLengthValidator: Validator {
    public init() {}

    public func validate(_ value: Password) throws {
        if value.value.count < 8 {
            throw PasswordLengthError()
        }
    }
}

private struct PasswordLengthError: Error, LocalizedError {
    var errorDescription: String? {
        "password length is less than 8"
    }
}
