//
//  RatingsSizesDetailView.swift
//  TouchDown
//
//  Created by Teenu Abraham on 10/05/23.
//

import SwiftUI

struct RatingsSizesDetailView: View {
     // MARK: - PROPERTIES
    let sizes: [String] = ["XS","S","M","L","XL"]
    
     // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .top,spacing: 3) {
            // RATING
            VStack(alignment: .leading,spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                }//:HSTACK
            }//:VSTACK
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing,spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center,spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                           Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .frame(width: 28,height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .foregroundColor(colorGray)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                }
            }//:VSTACK
        }//: HSTACK
    }
}

 // MARK: - PREVIEW

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
