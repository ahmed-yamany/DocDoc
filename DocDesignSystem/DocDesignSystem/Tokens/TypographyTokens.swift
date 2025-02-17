//
//  TypographyTokens.swift
//  DocDesignSystem
//
//  Created by Ahmed Yamany on 08/02/2025.
//

import Foundation

extension Locale {
    var lange: Languages {
        switch identifier {
        case "en": .english
        default: .arabic
        }
    }
}

enum Languages {
    case english
    case arabic
}

public extension DesignSystem.Tokens.Typography {
    static var regular: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.regular
        default:
            FontFamily.Cairo.regular
        }
    }

    static var black: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.black
        case .arabic:
            FontFamily.Cairo.black
        }
    }

    static var bold: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.bold
        case .arabic:
            FontFamily.Cairo.bold
        }
    }

    static var extraBold: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.extraBold
        case .arabic:
            FontFamily.Cairo.extraBold
        }
    }

    static var extraLight: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.extraLight
        case .arabic:
            FontFamily.Cairo.extraLight
        }
    }

    static var light: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.light
        case .arabic:
            FontFamily.Cairo.light
        }
    }

    static var medium: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.medium
        case .arabic:
            FontFamily.Cairo.medium
        }
    }

    static var semiBold: FontConvertible {
        switch Locale.current.lange {
        case .english:
            FontFamily.Inter.semiBold
        case .arabic:
            FontFamily.Cairo.semiBold
        }
    }
}
