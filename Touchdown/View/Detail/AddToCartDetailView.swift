//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 31/03/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } // :Button
        .padding(15)
        .background {
            Color(red: shop.selectedProduct?.redColor ?? sampleProduct.redColor,
                  green: shop.selectedProduct?.greenColor ?? sampleProduct.greenColor,
                  blue: shop.selectedProduct?.blueColor ?? sampleProduct.blueColor)
        }.clipShape(Capsule())
    }
}
// MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
