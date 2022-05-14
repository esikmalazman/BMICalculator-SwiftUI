//
//  CalculateButtonView.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 04/05/2022.
//

import SwiftUI

struct BaseButtonView: View {
  var  buttonLabel : String
  var foregroundColor = Color.black
  var bgColor : Color
  var action : () -> Void
  
  var body: some View {
    Button(buttonLabel) {
      action()
    }
    .padding()
    .frame(width: 348.0, height: 48.0)
    .background(bgColor)
    .foregroundColor(foregroundColor)
    .cornerRadius(10.0)
    
  }
}

struct CalculateButtonView_Previews: PreviewProvider {
  static var previews: some View {
    BaseButtonView(buttonLabel: "Text", bgColor: .red) {}
  }
}
