//
//  LandmarksTutorialApp.swift
//  LandmarksTutorial
//
//  Created by 박서인 on 8/31/25.
//

import SwiftUI

@main
struct LandmarksTutorialApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
