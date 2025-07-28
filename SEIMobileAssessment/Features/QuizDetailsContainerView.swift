//
//  QuizDetailsContainerView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI
import UIKit

struct QuizDetailsContainerView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> QuizDetailsViewController {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let result = storyboard.instantiateViewController(withIdentifier: "QuizDetailsViewController") as! QuizDetailsViewController
        return result
    }

    func updateUIViewController(_ uiViewController: QuizDetailsViewController, context: Context) {

    }

}

#Preview {
    QuizDetailsContainerView()
}
