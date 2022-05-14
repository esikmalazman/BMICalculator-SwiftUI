//
//  ContentView.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 25/04/2022.
//

import SwiftUI

struct ContentView: View {
  @State var heightSliderValue = 70.0
  @State var weightSliderValue = 40.0
  @State var isNextScreenPresented = false
  @State var bmi = BMI()
  
  var body: some View {
    ZStack {
      VStack {
        Text("BMI Calculator")
          .font(.title)
          .bold()
          .padding(.top)
        Spacer()
        SliderView(
          sliderValue: $heightSliderValue,
          textLabel: "Height",
          sliderTextLabel: "CM",
          sliderRange: 0...200)
        SliderView(
          sliderValue: $weightSliderValue,
          textLabel: "Weight",
          sliderTextLabel: "KG",
          sliderRange: 0...200)
        Spacer()
        BaseButtonView(
          buttonLabel: "Calculate",
          foregroundColor: Color("labelColor"),
          bgColor: Color("mainButtonColor")) {
            print("Calculate Tap")
            isNextScreenPresented = true
          }
          .sheet(isPresented: $isNextScreenPresented) {
            let bmiValue = bmi.calculateBMI(
              weight: weightSliderValue,
              height: heightSliderValue)
            let category = bmi.categoriesBMI(for: bmiValue)
            ResultContentView(
              isResultContentViewPresented: $isNextScreenPresented,
              bmiValue: bmiValue,
              bmiStatus: category)
          }
      }.padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

/*
 Must have
 - slider for height ✅
 - slider for weight ✅
 - label for slider height and weight ✅
 - button to calculate BMI ✅
 - BMI Logic ✅
 - Alert show bmi with status ✅
 
 */

/*  Nice to Have
 - Make slider design follow app design ✅
 - Initialise different color for result ✅
 - Should display the result on different page ✅
 - Dark modes
 
 */


