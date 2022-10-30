//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nikolai Kolmykov on 07.10.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var color: UIColor?
    var adviceValue: String?
    
    @IBOutlet weak var advice: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        advice.text = adviceValue
        view.backgroundColor = color
        
    }
    @IBAction func recalculateBmi(_ sender: Any) {
        dismiss(animated: true)
    }
    

   

}
