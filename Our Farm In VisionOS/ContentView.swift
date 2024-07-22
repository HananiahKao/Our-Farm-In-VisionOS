//
//  ContentView.swift
//  Our Farm In VisionOS
//
//  Created by Hananiah on 2024/7/21.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var MapImage = "Map"
    var places = placesObj().places
    var body: some View {
        ZoomableScrollView{
            ZStack{
                Image(MapImage)
                    .resizable()
                    .frame(width: 1080, height: 810, alignment: .center)
                ForEach(places) { Place in
                    BuidingTarget(Index: Place.dataKey,name: Place.title)
                        .offset(x: Place.x - (1080/2), y: Place.y - 810/2)
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
