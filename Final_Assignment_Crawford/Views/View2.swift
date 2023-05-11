//
//  View2.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct View2: View {
    var body: some View {
        
        let shapes: [JsonShapes] = Bundle.main.decodeJson("shapesData.json")
        
        NavigationView {
            List {
                ForEach(shapes) { shape in
                    ShapesCoverView(jsonShapes: shape)
                }
            }
        }
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
