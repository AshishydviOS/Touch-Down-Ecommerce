//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ashish Yadav on 29/03/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
