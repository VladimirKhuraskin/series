//
//  SeriesView.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

struct SeriesView: View {

  let series: Series
  
  var body: some View {
    VStack(alignment: .center) {
      Image(series.posterName)
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
    .navigationTitle(series.name)
  }

}

struct SeriesView_Previews: PreviewProvider {
  static var previews: some View {
    SeriesView(series: FavoritesScreenViewModel().series[0])
  }
}
