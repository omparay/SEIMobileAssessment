//
//  UserProfileView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading,) {
                Text("Hello Abel").font(.title)
                Text("Good Afternoon").font(.subheadline)
            }
            Spacer()
            Image("Avatar")
        }
    }
}

#Preview {
    UserProfileView()
}
