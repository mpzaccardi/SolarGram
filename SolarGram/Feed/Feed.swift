//
//  Feed.swift
//  SolarGram
//
//  Created by Lori Merone on 3/2/23.
//

import SwiftUI

struct Feed: View {
    
    var feedPost: [PostData] {post}
    
    var body: some View {
        List {
            ForEach(feedPost) {
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
            .previewDevice("iPhone 14 Pro")
            
    }
}
