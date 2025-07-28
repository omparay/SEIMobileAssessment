//
//  CourseMenuContainerView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI
import UIKit

struct CourseMenuContainerView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> CourseMenuViewController {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let result = storyboard.instantiateViewController(withIdentifier: "CourseMenuViewController") as! CourseMenuViewController
        return result
    }
    
    func updateUIViewController(_ uiViewController: CourseMenuViewController, context: Context) {

    }
}

#Preview {
    CourseMenuContainerView()
}
