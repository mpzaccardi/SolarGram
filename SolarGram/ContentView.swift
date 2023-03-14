//
//  ContentView.swift
//  SolarGram
//
//  Created by Lori Merone on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Feed()
                .tabItem {
                    Image(systemName: "photo.stack.fill")
                    Text("Photos")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad Air (5th generation)")
    }
}
