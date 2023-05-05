//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Teenu Abraham on 05/05/23.
//

import SwiftUI

struct FeaturedTabView: View {
     // MARK: - PROPERTIES
    
     // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(players) { Player in
                FeaturedItemView(player: Player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //:TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

 // MARK: - PREVIEW

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 pro")
            .background(Color.gray)
    }
}
