//
//  LandmarkList.swift
//  SwiftTestUi1
//
//  Created by 王庆敏 on 2023/1/2.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks:[Landmark]{
        landmarks.filter {Landmark in
            (!showFavoritesOnly || Landmark.isFavorite)
        }
        
    }
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                                    Text("Favorites only")
                                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
