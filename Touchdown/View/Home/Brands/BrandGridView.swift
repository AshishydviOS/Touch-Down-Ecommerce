//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 30/03/23.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      spacing: columnSpacing,
                      pinnedViews: []) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
                      .frame(height: 300)
                      .padding(15)
        }
    }
}

// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
