//
//  ProfileGrid.swift
//  SolarGram
//
//  Created by Lori Merone on 3/5/23.
//

import SwiftUI

struct ProfileGrid: View {
    
    var filteredPost: [PostData] {
        post.filter {post in post.isUser}}
    
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns) {
                ForEach(filteredPost) { post in
                    GridPost(post: post)
        
                }
                .listRowInsets(.init(top: 20,
                                             leading: 0,
                                             bottom: 20,
                                             trailing: 0))
                }
            }
        }
    }


struct ProfileGrid_Previews:
    
    PreviewProvider {
    static var previews: some View {
        ProfileGrid()
            .previewDevice("iPhone 14 Pro")
    }
}
