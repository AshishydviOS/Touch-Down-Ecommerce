//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 30/03/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // MARK: - NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // MARK: - HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: - DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // MARK: - DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // MARK: - RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // MARK: - DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // :ScrollView
                
                // MARK: - QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // MARK: - ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            } // :VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                
            )
        } // :VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduct?.redColor ?? sampleProduct.redColor,
                          green: shop.selectedProduct?.greenColor ?? sampleProduct.greenColor,
                          blue: shop.selectedProduct?.blueColor ?? sampleProduct.blueColor).ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
