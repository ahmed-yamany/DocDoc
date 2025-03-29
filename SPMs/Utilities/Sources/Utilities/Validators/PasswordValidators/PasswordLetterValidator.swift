//
//  PasswordLetterValidator.swift
//  Shared
//
//  Created by Ahmed Yamany on 06/11/2024.
//

import Foundation

public struct PasswordLetterValidator: Validator {
    public init() {}

    public func validate(_ value: Password) throws {
        let letterRegex = ".*[A-Za-z]+.*"
        let letterPredicate = NSPredicate(format: "SELF MATCHES %@", letterRegex)
        if !letterPredicate.evaluate(with: value.value) {
            throw PasswordLetterError()
        }
    }
}

private struct PasswordLetterError: Error, LocalizedError {
    var errorDescription: String? {
        "password should contain at least one letter"
    }
}
