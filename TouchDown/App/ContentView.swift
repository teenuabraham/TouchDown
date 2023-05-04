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
     FooterView()
            .padding(.horizontal)
    }
}

 // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
