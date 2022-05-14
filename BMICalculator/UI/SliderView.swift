//
//  SliderView.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 28/04/2022.
//

import SwiftUI

struct SliderView: View {
  @Binding var sliderValue : Double
  var textLabel : String
  var sliderTextLabel : String
  var sliderRange : ClosedRange<Double> = 1...100
  var body: some View {
    VStack {
      RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.white)
        .frame(width: 348.0, height: 200.0)
        .overlay {
          VStack {
            Text(textLabel)
              .font(.body)
              .fontWeight(.medium)
            HStack {
              
              Slider(value: $sliderValue,
                     in: sliderRange)
              .tint(.red)
              let heightValue = sliderValue.rounded()
              Text("\(Int(heightValue)) \(sliderTextLabel)")
                .foregroundColor(Color("sliderLabelColor"))
            }.padding()
          }
        }
        .padding()
        .shadow(
          color: Color.gray.opacity(0.5),
          radius:  10,
          y: 1)
    }
  }
}

struct SliderView_Previews: PreviewProvider {
  static var previews: some View {
    SliderView(sliderValue: .constant(110),
               textLabel: "Sample", sliderTextLabel: "CM")
    .previewDevice(PreviewDevice.init(rawValue: "iPhone 13 mini"))
  }
}
