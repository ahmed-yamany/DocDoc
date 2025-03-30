//
//  TabBarItem.swift
//  DocDoc
//
//  Created by Ahmed Yamany on 18/03/2025.
//
import SwiftUI

struct TabBarItem: Identifiable, Hashable, View {
    var id: TabBarItemType
    let title: String
    let view: () -> AnyView

    var body: some View {
        view()
    }

    init(id: TabBarItemType, title: String, view: @escaping () -> AnyView) {
        self.id = id
        self.title = title
        self.view = view
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: TabBarItem, rhs: TabBarItem) -> Bool {
        lhs.id == rhs.id
    }
}
