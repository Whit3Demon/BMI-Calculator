//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nikolai Kolmykov on 07.10.2022.
//

import UIKit

struct CalculatorBrain {
    
    var calculatedBMI: BMI?
    
    func getBMIValue() -> String{
        let safeBMI =  String(format: "%.1f",calculatedBMI?.value ?? "0.0" )
        return safeBMI
    }

    func getAdvice() -> String{
        let a = calculatedBMI?.advice ?? "error"
        return a
    }
    
    func getColor() -> UIColor{
        let a = calculatedBMI?.color ?? .clear
        return a
    }
    
    mutating func calculateBMI(height: Float ,weight: Float){
        let bmiValue =  (weight / pow(height,2))
        switch bmiValue {
        case let k where k <= 18.5 :
            calculatedBMI = BMI(value: bmiValue, advice: "eat more", color: .blue)
        case let k where k <= 24.9 :
            calculatedBMI = BMI(value: bmiValue, advice: "normal", color: .green)
        default:
            calculatedBMI = BMI(value: bmiValue, advice: "eat less", color: .red)
        }
        
    }
}
