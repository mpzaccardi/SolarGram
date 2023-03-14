//
//  Landmark.swift
//  Landmarks
//
//  Created by Lori Merone on 2/24/23.
//

import Foundation
import SwiftUI
import CoreLocation

// identifiable allows for concise code when iterating through the list as the program recognizes each instance will contain a unique id and you don't have to tell the ForEach which property to use for ID
//Hashable allows data to operate as dict key or set element, don't fully understand
struct PostData: Hashable, Codable, Identifiable {
    var id: Int
    var user: String
    var description: String
    var isUser: Bool
    var isLiked: Bool
    
    private var userImageName: String
    var userImage: Image {
            Image(userImageName)
    }
    
    private var postImageName: String
    var postImage: Image {
            Image(postImageName)
    }
    
}
