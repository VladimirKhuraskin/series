//
//  SeriesApp.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

@main
struct SeriesApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(FavoritesScreenViewModel())
        .environmentObject(Router())
    }
  }
}
