//
//  Shop.swift
//  Touchdown
//
//  Created by Ashish Yadav on 31/03/23.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
