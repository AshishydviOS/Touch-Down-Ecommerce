//
//  ContentView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 19/05/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    let topHeight = UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow}?.safeAreaInsets.top
    
    // Depricated:
    // UIApplication.shared.windows.first?.safeAreaInsets.top
    
    //MARK: BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    // MARK: - Navigation Bar
                    NavigationbarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    // MARK: - Container View
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            // MARK: - featured Player Corousel
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                                .padding(.vertical, 20)
                            
                            // MARK: - Categories
                            CategoryGridView()
                            
                            // MARK: - Product Item List
                            TitleView(titleString: "Helmets") // Header
                            LazyVGrid(columns: gridLayout,
                                      spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } // :ForEach
                            } // :LazyVGrid
                                      .padding(15)
                            
                            // MARK: - Brands List
                            TitleView(titleString: "Brands")
                            BrandGridView()
                            
                            // MARK: Footer view
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
            
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
