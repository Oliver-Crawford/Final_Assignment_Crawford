//
//  ColorsCoverView.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct ColorsCoverView: View {
    var jsonColors: JsonColors
    var body: some View {
        HStack {
            Color(red: jsonColors.red, green: jsonColors.green, blue: jsonColors.blue)
                .ignoresSafeArea()
                .overlay(
                    VStack {
                        Text(jsonColors.id)
                            .foregroundColor(Color(red: jsonColors.red, green: jsonColors.green, blue: jsonColors.blue, opacity: 1.0)).colorInvert()
                        Text("Red: \(jsonColors.red)").foregroundColor(Color(red: jsonColors.red, green: jsonColors.green, blue: jsonColors.blue, opacity: 1.0)).colorInvert()
                        Text("Green: \(jsonColors.green)").foregroundColor(Color(red: jsonColors.red, green: jsonColors.green, blue: jsonColors.blue, opacity: 1.0)).colorInvert()
                        Text("Blue: \(jsonColors.blue)").foregroundColor(Color(red: jsonColors.red, green: jsonColors.green, blue: jsonColors.blue, opacity: 1.0)).colorInvert()
                    }.onTapGesture {
                        UIApplication.shared.open(URL(string: jsonColors.link)!)
                    }
                )
        }
        .frame(height: 80)
    }
}

//struct ColorsCoverView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorsCoverView()
//    }
//}
