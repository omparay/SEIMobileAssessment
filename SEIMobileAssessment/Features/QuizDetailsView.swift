//
//  QuizDetailsView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct QuizDetailsView: View {
    @Binding var path: NavigationPath
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            QuizDetailsContainerView()
        }
        .onChange(of: path) { oldValue, newValue in
            print("Selection changed from \(oldValue) to \(newValue)")
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Quiz Details").font(.headline)
                    Text("NURS500 Section 02").font(.subheadline)
                }
            }
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Label("", systemImage: "arrow.backward")
                }

            }
        }
    }
}

#Preview {
    @Previewable @State var path = NavigationPath()
    QuizDetailsView(path: $path)
}
