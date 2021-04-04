//
//  SettingsViewController.swift
//  AuthoriseProject
//
//  Created by George Kook on 04.04.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minValue: String!
    var maxValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minValue
        maxValueTF.text = maxValue
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
