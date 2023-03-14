//
//  Profile.swift
//  SolarGram
//
//  Created by Lori Merone on 3/5/23.
//

import SwiftUI

struct Profile: View {

    var body: some View {
        VStack {
            ProfileUser()
            ProfileGrid()
        }
    }
}

struct Profile_Previews: PreviewProvider {

    static var previews: some View {
        Profile()
            .previewDevice("iPhone 14 Pro")
    }
}
