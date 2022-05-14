//
//  BMI.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 25/04/2022.
//

import Foundation

struct BMI {
  
  func calculateBMI(weight : Double, height : Double) -> Double {
    let results = weight / pow((height/100), 2)
    print("result : \(results)")
    return results
  }
  
  func categoriesBMI(for bmi : Double) -> String {
    var status = ""
    if bmi < 18.5 {
      status = "Underweight"
    } else if bmi >= 18.5  && bmi < 24.9 {
      status = "Normal weight"
    } else if bmi >= 24.9 {
      status = "Obesity"
    }
    return status
  }
}
