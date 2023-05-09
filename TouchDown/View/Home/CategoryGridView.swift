//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Teenu Abraham on 09/05/23.
//

import SwiftUI

struct CategoryGridView: View {
     // MARK: - PROPERTIES
    
     // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: []) {
                Section(header:SectionView(rotateClockWise: true), footer: SectionView(rotateClockWise: false)) {
                    ForEach(categories) { category in
                       CategoryItemView(category: category)
                    }
                }
                
            }//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL VIEW
    }
}

 // MARK: - PREVIEW

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
