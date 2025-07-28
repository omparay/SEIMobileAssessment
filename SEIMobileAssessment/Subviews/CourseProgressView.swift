//
//  CourseProgressBarView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct CourseProgressView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Assoc. Arts in Business Admin").font(.title3)
                ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                Text("72.5 of 90 points completed").font(.caption)

            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    CourseProgressView()
}
