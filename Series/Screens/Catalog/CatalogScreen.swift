//
//  CatalogScreen.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

struct CatalogScreen: View {

  @EnvironmentObject var router: Router
  @State var text = NSMutableAttributedString(string: "")

  var body: some View {
    VStack(alignment: .center, spacing: 20) {
      Button(action: {
        router.selection = 1
        router.isGOTShowed = true
      }) {
        Text("Show Game of Thrones")
      }
      .padding()
      .frame(height: 50)
      .background(Color.purple)
      .foregroundColor(.white)
      .cornerRadius(12)

      TextView(text: $text)
        .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 200)
        .font(.body)
        .overlay(
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
        )
    }
  }

}

struct CatalogScreen_Previews: PreviewProvider {
  static var previews: some View {
    CatalogScreen()
  }
}
