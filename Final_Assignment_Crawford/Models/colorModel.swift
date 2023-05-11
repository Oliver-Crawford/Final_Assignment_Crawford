//
//  colorModel.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import Foundation

struct JsonColors: Codable, Identifiable {
    let id: String
    let red: Double
    let green: Double
    let blue: Double
    let link: String
}
