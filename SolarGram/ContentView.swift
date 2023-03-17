//
//  ContentView.swift
//  SolarGram
//
//  Created by Lori Merone on 3/2/23.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject var viewModel = ModelData()
    
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
        }.environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .previewDevice("iPad Air (5th generation)")
    }
}
