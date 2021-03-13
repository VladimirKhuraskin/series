//
//  TextView.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import UIKit
import SwiftUI

struct TextView: UIViewRepresentable {

  @Binding var text: NSMutableAttributedString

  func makeUIView(context: Context) -> UITextView {
    UITextView()
  }

  func updateUIView(_ uiView: UITextView, context: Context) {
    uiView.attributedText = text
  }
  
}
