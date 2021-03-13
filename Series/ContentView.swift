//
//  ContentView.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

struct ContentView: View {

  @EnvironmentObject var router: Router

  var body: some View {
    TabView(selection: $router.selection) {
      CatalogScreen()
        .tabItem {
          VStack {
            Image(systemName: "list.star")
            Text("Catalog")
          }
        }
        .tag(0)
      FavoritesScreen()
        .tabItem {
          VStack {
            Image(systemName: "star")
            Text("Favorites")
          }
        }
        .tag(1)
      ProfileScreen()
        .tabItem {
          VStack {
            Image(systemName: "person")
            Text("Profile")
          }
        }
        .tag(2)
    }
    .accentColor(.purple)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Router())
  }
}
