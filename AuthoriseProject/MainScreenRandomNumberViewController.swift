//
//  ViewController.swift
//  AuthoriseProject
//
//  Created by George Kook on 04.04.2021.
//

import UIKit

class MainScreenRandomNumberViewController: UIViewController {

    @IBOutlet var minValueAmountLabel: UILabel!
    @IBOutlet var maxValueAmountLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.minValue = minValueAmountLabel.text
        settingsVC.maxValue = maxValueAmountLabel.text
    }


    @IBAction func getResultButtonTapped() {
        let minimumNumber = Int(String(minValueAmountLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maxValueAmountLabel.text ?? "")) ?? 100
        if minimumNumber > maximumNumber {
            showAlert(with: "Interval Error", and: "The minimum value cannot be greater than the maximum value")
            minValueAmountLabel.text = String(maximumNumber)
            maxValueAmountLabel.text = String(minimumNumber)
        } else {
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else {return}
        minValueAmountLabel.text = settingsVC.minValueTF.text
        maxValueAmountLabel.text = settingsVC.maxValueTF.text
        randomValueLabel.text = "🔥"
    }
}

// MARK: - Private Methods
extension MainScreenRandomNumberViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
