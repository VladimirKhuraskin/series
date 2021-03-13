//
//  ProfileScreen.swift
//  Series
//
//  Created by Vladimir Khuraskin on 13.03.2021.
//

import SwiftUI

struct ProfileScreen: View {
  
  @State var showMoreInfo: Bool = false

  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      HStack {
        Image(systemName: "person.crop.circle.fill")
          .font(Font.system(size: 36))
        Text("vladeku")
      }
      Text("I love watching series and am always on the lookout for new quality content. My favorite is Game of Thrones. 🐲")
      Button(action: {
        showMoreInfo.toggle()
      }) {
        Text("Show more")
      }
      .padding()
      .frame(height: 36)
      .background(Color.purple)
      .foregroundColor(.white)
      .cornerRadius(8)
      Spacer()
    }
    .sheet(isPresented: $showMoreInfo, content: {
      Text("Some more info 🍿")
        .font(.largeTitle)
        .foregroundColor(.purple)
    })
    .padding()
  }

}

struct ProfileScreen_Previews: PreviewProvider {
  static var previews: some View {
    ProfileScreen()
  }
}
