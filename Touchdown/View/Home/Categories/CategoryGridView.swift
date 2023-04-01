//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 29/03/23.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: []) {
                Section(header: SectionView(rotationClockwise: false),
                        footer: SectionView(rotationClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } // : ForEach
                } // : Section
            } // : LazyHGrid
                      .frame(height: 140)
                      .padding(.horizontal, 15)
                      .padding(.vertical, 10)
        } // : ScrollView
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
