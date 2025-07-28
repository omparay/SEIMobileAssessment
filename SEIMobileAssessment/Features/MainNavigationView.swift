//
//  MainNavigationView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct MainNavigationView: View {
    var body: some View {
        TabView {
            Tab("Home",systemImage: "house.fill") {
                DashboardView()
                    .toolbarBackground(.visible, for: .tabBar)
            }
            Tab("Courses", systemImage: "bookmark.fill") {
                DemoView()
                    .toolbarBackground(.visible, for: .tabBar)
            }
            Tab("Support", systemImage: "lifepreserver") {
                DemoView()
                    .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
            }
            Tab("Notifications", systemImage: "bell.badge"){
                DemoView()
                    .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
            }
        }
    }
}

#Preview {
    MainNavigationView()
}
