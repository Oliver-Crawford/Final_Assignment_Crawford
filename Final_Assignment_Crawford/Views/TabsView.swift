//
//  TabsView.swift
//  Final_Assignment_Crawford
//
//  Created by AC Student on 5/10/23.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            View1()
                .tabItem {
                    Image(systemName: "paintbrush")
                    Text("Colors")
                }
            View2()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Shapes")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
