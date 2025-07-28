//
//  NewsCardView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct NewsCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Want a $25 gift card?").font(.headline.bold()).padding(.bottom,4)
            Text("Are you a Capella Mobile app user? Participant in an Interview...").font(.callout).lineLimit(2)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 16)
            .fill(Color.newsCardFill.opacity(0.5))
        }
        .frame(width: 250)
    }
}

#Preview {
    NewsCardView()
}
