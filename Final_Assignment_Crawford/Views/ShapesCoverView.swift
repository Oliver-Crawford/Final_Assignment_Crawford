//
//  ShapesCoverView.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct ShapesCoverView: View {
    var jsonShapes: JsonShapes
    var body: some View {
        HStack {
            Text(jsonShapes.name)
            Image(systemName: jsonShapes.id)
        }
        .frame(height: 80)
    }
}

//struct ShapesCoverView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShapesCoverView()
//    }
//}
