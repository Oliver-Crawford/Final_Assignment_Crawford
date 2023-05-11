//
//  FruitsCoverView.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct FruitsCoverView: View {
    
    let colorModel: [JsonColors] = Bundle.main.decodeJson("colorData.json")
    
    var body: some View {
        TabView {
            ForEach(colorModel.prefix(5)) { model in
                Image(model.id)
                    .resizable()
                    .scaledToFit()
            }
        }
            .tabViewStyle(PageTabViewStyle())
    }
}


struct FruitsCoverView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCoverView()
    }
}
