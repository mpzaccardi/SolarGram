//
//  Post.swift
//  SolarGram
//
//  Created by Lori Merone on 3/2/23.
//

import SwiftUI

struct FeedPost: View {
    var postData: PostData
    var body: some View {
        VStack{
            HStack {
                Rectangle()
                    .frame(width: 30, height: 30)
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        postData.userImage
                            .resizable()
                            .scaledToFill()
                            
                )
                .clipShape(Circle())
                .padding(.leading, 5.0)
                
                Text(postData.user)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                Spacer()
            }

            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .overlay(
                    postData.postImage
                    .resizable()
                    .scaledToFill()
                )
                .clipShape(Rectangle())
            
            Text(postData.description)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .bottom], 5.0)
            HStack{
                if postData.isLiked {
                    Image(systemName: "heart.fill")
                        .padding(.leading, 5.0)
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "heart")
                        .padding(.leading, 5.0)
                }
                Spacer()
            }
  
        }
    }
}

struct FeedPost_Previews: PreviewProvider {
    static var postData = ModelData().post
    static var previews: some View {
        FeedPost(postData: postData[0])
            .previewDevice("iPhone 14 Pro")
    }
}
