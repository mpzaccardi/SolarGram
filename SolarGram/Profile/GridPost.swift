//
//  GridPost.swift
//  SolarGram
//
//  Created by Lori Merone on 3/5/23.
//

import SwiftUI

struct GridPost: View {
    
    var post: PostData
    
    var body: some View {
        VStack{

            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .overlay(
                    post.postImage
                    .resizable()
                    .scaledToFill()
                )
                .clipShape(Rectangle())
        }
    }
}

struct GridPost_Previews: PreviewProvider {
    static var posts = ModelData().post
    static var previews: some View {
        GridPost(post: posts[0])
            .previewDevice("iPhone 14 Pro")
    }
}

