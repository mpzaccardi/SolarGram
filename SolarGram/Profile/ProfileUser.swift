//
//  ProfileUser.swift
//  SolarGram
//
//  Created by Lori Merone on 3/5/23.
//

import SwiftUI

struct ProfileUser: View {
   

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 80, height: 80)
                .aspectRatio(1, contentMode: .fit)
                .overlay(
                    Image("MichaelPic")
                        .resizable()
                        .scaledToFill()
                        
            )
            .clipShape(Circle())
            .padding(.leading, 5.0)
            
            Text("Michael")
                .font(.title)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
        }
    }
}

struct ProfileUser_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUser()
            .previewDevice("iPhone 14 Pro")
    }
}
