//
//  ResultContentView.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 04/05/2022.
//

import SwiftUI

struct ResultContentView: View {
  @Binding var isResultContentViewPresented : Bool
  @State var bmiValue  : Double = 18.5
  @State var bmiStatus : String = "underweight"
  
  var body: some View {
    ZStack {
      let backgroundColor = backgroundColor(bmiValue)
      Color(backgroundColor)
      VStack {
        LabelView(text: "your result",
                  font: .title,
                  fontWeight: .bold)
        .padding(.top)
        Spacer()
        ResultTextView(value: $bmiValue,
                       valueStatus: $bmiStatus)
        Spacer()
        BaseButtonView(buttonLabel: "Recalculate", foregroundColor: .black,bgColor: .white) {
          // Modify boolean to dismiss the view
          isResultContentViewPresented = false
        }
        .padding(.bottom)
      }
    }.ignoresSafeArea()
  }
  
  func backgroundColor(_ bmi : Double) -> UIColor {
    var color = UIColor.white
    if bmi < 18.5 {
      color = UIColor(named:"blueResultsColor")!
    } else if bmi >= 18.5  && bmi < 24.9 {
      color = UIColor(named:"greenResultsColor")!
    } else if bmi >= 24.9 {
      color = UIColor(named:"redResultsColor")!
    }
    return color
  }
}

struct ResultTextView : View {
  @Binding var value : Double
  @Binding var valueStatus : String
  
  var body: some View {
    VStack {
      LabelView(text: "your bmi",
                font: .footnote)
      LabelView(text: "\(String(format: "%.2f", value))",
                font: .largeTitle,
                fontWeight: .heavy)
      .padding()
      LabelView(text: valueStatus,
                font: .subheadline,
                fontWeight: .bold)
    }
    .frame(width: 208.0,
           height: 189.0)
  }
}

struct ResultContentView_Previews: PreviewProvider {
  static var previews: some View {
    ResultContentView(isResultContentViewPresented: .constant(true))
      .previewDevice(PreviewDevice.init(rawValue: "iPhone 13 mini"))
  }
}
