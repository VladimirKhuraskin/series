//
//  Router.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
  
  @Published var selection: Int = 0
  @Published var isGOTShowed: Bool = false
  
}
