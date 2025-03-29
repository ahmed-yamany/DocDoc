//
//  SiginViewModel.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 28/03/2025.
//

import DocDesignSystem
import SwiftUI
import Utilities

@MainActor
protocol SiginViewModel: ObservableObject, Sendable {
    var email: Email { get set }
    var password: Password { get set }
}

@MainActor
@Observable
final class SiginViewModelImpl: SiginViewModel {
    var email: Email = ""
    var password: Password = ""
}
