//
//  Feed.swift
//  SolarGram
//
//  Created by Lori Merone on 3/2/23.
//

import SwiftUI

struct Feed: View {
    
    @EnvironmentObject var viewModel: ModelData
    
    var body: some View {
        List {
            ForEach(viewModel.posts) {
                postData in FeedPost(postData: postData)
                    .listRowInsets(.init(top: 20,
                                         leading: 0,
                                         bottom: 20,
                                         trailing: 0))
            }
        }
        .listStyle(.inset)

    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
            .environmentObject(ModelData())
            .previewDevice("iPhone 14 Pro")
            
    }
}
