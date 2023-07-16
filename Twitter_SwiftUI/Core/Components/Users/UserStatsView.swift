//
//  UserStatsView.swift
//  Twitter_SwiftUI
//
//  Created by Vamsi Chaudhary on 16/07/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack{
                Text("500").bold().font(.subheadline)
                Text("Following").font(.caption).foregroundColor(.gray)
            }
            HStack{
                Text("6.9M").bold().font(.subheadline)
                Text("followers").font(.caption).foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
