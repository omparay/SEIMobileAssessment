//
//  CourseMenuView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct CourseMenuView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(alignment: .leading) {
            CourseMenuContainerView(selectedItem: $path)
        }
        .onChange(of: path) { oldValue, newValue in
            print("Selection changed from \(oldValue) to \(newValue)")
        }
    }
}

#Preview {
    @Previewable @State var path = NavigationPath()
    CourseMenuView(path: $path)
}
