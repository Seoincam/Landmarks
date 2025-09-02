//
//  ContentView.swift
//  LandmarksTutorial
//
//  Created by 박서인 on 8/31/25.
//

import SwiftUI

struct ContentView: View {   
    var body: some View {
        TabView {
            Tab("Featured", systemImage: "star") {
                CategoryHome()
            }
            
            Tab("List", systemImage: "list.bullet") {
                LandmarkList()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
