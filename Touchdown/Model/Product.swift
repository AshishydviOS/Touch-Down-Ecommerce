//
//  ProductModel.swift
//  Touchdown
//
//  Created by Ashish Yadav on 29/03/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var redColor: Double {
        return color[0]
    }
    var greenColor: Double {
        return color[1]
    }
    var blueColor: Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}

