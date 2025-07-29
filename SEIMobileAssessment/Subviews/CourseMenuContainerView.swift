//
//  CourseMenuContainerView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI
import UIKit


struct CourseMenuContainerView: UIViewControllerRepresentable {
    @Binding var selectedItem: NavigationPath

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> CourseMenuViewController {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let result = storyboard.instantiateViewController(withIdentifier: "CourseMenuViewController") as! CourseMenuViewController
        result.coordinatorDelegate = context.coordinator
        return result
    }
    
    func updateUIViewController(_ uiViewController: CourseMenuViewController, context: Context) {

    }

    class Coordinator: NSObject, CoordinatorDelegate {
        var parent: CourseMenuContainerView

        init(_ parent: CourseMenuContainerView) {
            self.parent = parent
        }

        func didSelectRow(with data: String) {
            parent.selectedItem.append(data)
        }
    }
}

#Preview {
    @Previewable @State var selectedItem = NavigationPath()
    CourseMenuContainerView(selectedItem: $selectedItem)
}
