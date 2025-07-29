//
//  CourseMenuViewController.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import Foundation
import UIKit

protocol CoordinatorDelegate: AnyObject {
    func didSelectRow(with data: String)
}

class CourseMenuViewController: UITableViewController {
    weak var coordinatorDelegate: CoordinatorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = "course"
        coordinatorDelegate?.didSelectRow(with: selectedData)
    }
}
