//
//  DesignSystem.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 17/02/2025.
//

import Foundation

public enum DesignSystem {
    public enum Foundations {}
    public enum Tokens {}
}

public extension DesignSystem.Foundations {
    static let typography = FontFamily.self
}

public extension DesignSystem.Tokens {
    enum Typography {}
    enum Mesurments {}
}
