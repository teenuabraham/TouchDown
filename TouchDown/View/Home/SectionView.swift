//
//  SectionView.swift
//  TouchDown
//
//  Created by Teenu Abraham on 09/05/23.
//

import SwiftUI

struct SectionView: View {
     // MARK: - PROPERTIES
    @State var rotateClockWise: Bool
    
     // MARK: - BODY
    
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

 // MARK: - PREVIEW

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .background(colorBackground)
    }
}
