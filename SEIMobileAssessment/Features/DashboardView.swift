//
//  ContentView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            UserProfileView()
            CourseProgressView()
            Text("My Tasks")
            ScrollView(.horizontal) {
                LazyHStack {
                    TaskCardView().frame(maxWidth: 250)
                    TaskCardView().frame(maxWidth: 250, maxHeight: .infinity)
                    TaskCardView().frame(maxWidth: 250, maxHeight: .infinity)
                }
            }
            StudentResourcesView()
            Text("News & Updates")
            ScrollView(.horizontal) {
                LazyHStack {
                    NewsCardView().frame(maxWidth: 250, maxHeight: .infinity)
                    NewsCardView().frame(maxWidth: 250, maxHeight: .infinity)
                    NewsCardView().frame(maxWidth: 250, maxHeight: .infinity)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    DashboardView()
}
