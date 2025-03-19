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

extension TabBarItem {
    static var home: Self {
        TabBarItem(
            id: .home,
            title: "Home",
            view: { AnyView(HomeFlow()) }
        )
    }
}

extension TabBarItem {
    static var profile: Self {
        TabBarItem(
            id: .profile,
            title: "Profile",
            view: { AnyView(ProfileFlow()) }
        )
    }
}

extension TabBarItem {
    static var search: Self {
        TabBarItem(
            id: .search,
            title: "Search",
            view: { AnyView(SearchFlow()) }
        )
    }
}

extension TabBarItem {
    static var appoinments: Self {
        TabBarItem(
            id: .appointments,
            title: "Appointments",
            view: { AnyView(AppointmentFlow()) }
        )
    }
}

extension TabBarItem {
    static var inbox: Self {
        TabBarItem(
            id: .inbox,
            title: "Inbox",
            view: { AnyView(InboxFlow()) }
        )
    }
}
