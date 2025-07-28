//
//  ContentView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    UserProfileView()
                    CourseProgressView()
                    Text("My Tasks")
                    ScrollView(.horizontal) {
                        LazyHStack {
                            NavigationLink(destination: CourseMenuContainerView()) {
                                TaskCardView()
                            }
                            .foregroundStyle(Color.black)
                            NavigationLink(destination: CourseMenuContainerView()) {
                                TaskCardView()
                            }
                            .foregroundStyle(Color.black)
                            NavigationLink(destination: CourseMenuContainerView()) {
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
        }
    }
}

#Preview {
    DashboardView()
}
