//
//  ContentView.swift
//  MapViewSample
//
//  Created by Gauravkumar Thummar on 2021-08-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: MapView()) {
                Text("MapView")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
