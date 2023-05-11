//
//  JsonDecoderExtension.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import Foundation

extension Bundle {
    func decodeJson<T: Codable>(_ file: String) -> T {
        guard let fileLocation = self.url(forResource: file, withExtension: nil) else {
            fatalError("\(file) was not found")
        }
        guard let jsonData = try? Data(contentsOf: fileLocation) else {
            fatalError("\(file) failed to load")
        }
        guard let decodedData = try? JSONDecoder().decode(T.self, from: jsonData) else {
            fatalError("\(file) failed to decode")
        }
        return decodedData
    }
}
