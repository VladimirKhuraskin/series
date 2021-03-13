//
//  SeriesListCell.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

struct SeriesListCell: View {

  let series: Series

  var body: some View {
    NavigationLink(destination: SeriesView(series: series)) {
      HStack {
        Image(series.posterName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 48, height: 48, alignment: .center)
        Text(series.name)
      }
    }
  }

}

struct SeriesListCell_Previews: PreviewProvider {
  static var previews: some View {
    SeriesListCell(series: FavoritesScreenViewModel().series[0])
  }
}
