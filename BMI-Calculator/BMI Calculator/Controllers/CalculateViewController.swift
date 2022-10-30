//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Nikolai Kolmykov on 07.10.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    var calcukatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        if (sender.maximumValue == 200) {
            weightValue.text = String(format: "%.0f", sender.value) + "kg"

        }
        else {
            heightValue.text = String(format: "%.2f", sender.value) + "m"

        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {

        calcukatorBrain.calculateBMI(height:heightSlider.value ,weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calcukatorBrain.getBMIValue()
            destinationVC.adviceValue = calcukatorBrain.getAdvice()
            destinationVC.color = calcukatorBrain.getColor()
            
        }
    }
    
}

