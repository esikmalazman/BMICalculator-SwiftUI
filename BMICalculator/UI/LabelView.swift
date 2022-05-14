//
//  TextView.swift
//  BMICalculator
//
//  Created by Ikmal Azman on 04/05/2022.
//

import SwiftUI

struct LabelView : View {
  var text : String
  var font : Font
  var fontWeight : Font.Weight = .regular
  
  var body: some View {
    Text(text.uppercased())
      .font(font)
      .fontWeight(fontWeight)

  }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
      LabelView(text: "Reusable Text",
                font: .footnote)
    }
}
