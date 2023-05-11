//
//  ContentView.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct View1: View {
    var body: some View {
        let colors: [JsonColors] = Bundle.main.decodeJson("colorData.json")
        
        
        NavigationView {
            List {
                FruitsCoverView()
                    .frame(height:300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:0))
                ForEach(colors) { colors in
                    
                        ColorsCoverView(jsonColors: colors)
                    

                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
