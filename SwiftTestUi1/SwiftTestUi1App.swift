//
//  SwiftTestUi1App.swift
//  SwiftTestUi1
//
//  Created by ηεΊζ on 2023/1/2.
//

import SwiftUI

@main
struct SwiftTestUi1App: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
