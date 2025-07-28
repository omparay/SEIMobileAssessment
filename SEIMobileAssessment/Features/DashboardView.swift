//
//  ContentView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                UserProfileView()
                CourseProgressView()
                Text("My Tasks")
                ScrollView(.horizontal) {
                    LazyHStack {
                        TaskCardView()
                        TaskCardView()
                        TaskCardView()
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

#Preview {
    DashboardView()
}
