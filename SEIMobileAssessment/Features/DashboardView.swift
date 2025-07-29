//
//  ContentView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct DashboardView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    UserProfileView()
                    CourseProgressView()
                    Text("My Tasks")
                    ScrollView(.horizontal) {
                        LazyHStack {
                            NavigationLink(value: "task") {
                                TaskCardView()
                            }
                            .foregroundStyle(Color.black)
                            NavigationLink(value: "task") {
                                TaskCardView()
                            }
                            .foregroundStyle(Color.black)
                            NavigationLink(value: "task") {
                                TaskCardView()
                            }
                            .foregroundStyle(Color.black)
                        }
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    StudentResourcesView()
                    Text("News & Updates")
                    ScrollView(.horizontal) {
                        LazyHStack {
                            NewsCardView()
                            NewsCardView()
                            NewsCardView()
                        }
                    }
                    .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding(.horizontal)
            .onChange(of: path) { oldValue, newValue in
                print("Selection changed from \(oldValue) to \(newValue)")
            }
            .navigationDestination(for: String.self) { navItem in
                switch navItem {
                    case "task":
                        CourseMenuView(path: $path)
                    case "course" :
                        QuizDetailsView(path: $path)
                    default:
                        DemoView()
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
