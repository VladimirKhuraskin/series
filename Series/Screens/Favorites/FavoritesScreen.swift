//
//  FavoritesScreen.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

final class FavoritesScreenViewModel: ObservableObject {

  @Published private(set) var series = [
    Series(name: "The Witcher", posterName: "witcher"),
    Series(name: "Game of Thrones", posterName: "got"),
    Series(name: "Sherlock", posterName: "sherlock"),
    Series(name: "The Big Bang Theory", posterName: "bbt"),
    Series(name: "Friends", posterName: "friends"),
    Series(name: "How I Met Your Mother", posterName: "himym"),
    Series(name: "Rick and Morty", posterName: "ram"),
    Series(name: "Silicon Valley", posterName: "siliconvalley"),
  ]

}

struct Series {
  let name: String
  let posterName: String
}

extension Series: Identifiable {
  var id: String {
    name
  }
}

struct FavoritesScreen: View {

  @EnvironmentObject var viewModel: FavoritesScreenViewModel
  @EnvironmentObject var router: Router
  
  var body: some View {
    NavigationView {
      List {
        ForEach(viewModel.series) { item in
          SeriesListCell(series: item)
        }
      }
      .navigationTitle("Favorites Series")
      .overlay(NavigationLink(destination: SeriesView(series: viewModel.series[1]),
                              isActive: $router.isGOTShowed) {
        EmptyView().hidden()
      })
      .listStyle(InsetGroupedListStyle())
    }
  }

}

struct FavoritesScreen_Previews: PreviewProvider {
  static var previews: some View {
    FavoritesScreen()
      .environmentObject(FavoritesScreenViewModel())
  }
}
