//
//  ContentView.swift
//  SwiftTestUi1
//
//  Created by ηεΊζ on 2023/1/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
