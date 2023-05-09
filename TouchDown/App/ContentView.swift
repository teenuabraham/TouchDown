//
//  ContentView.swift
//  TouchDown
//
//  Created by Teenu Abraham on 04/05/23.
//

import SwiftUI

struct ContentView: View {
     // MARK: - PROPERTIES
    
     // MARK: - BODy
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                FeaturedTabView()
                     .padding(.vertical ,20)
                ScrollView(.vertical, showsIndicators: false, content:  {
                    VStack (spacing: 0) {
//                        FeaturedTabView()
//                             .padding(.vertical ,20)
                        CategoryGridView()
                 
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLLVIEW
            } //:VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //:ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

 // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
