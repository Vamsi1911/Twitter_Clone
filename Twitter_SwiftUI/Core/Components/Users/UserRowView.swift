//
//  UserRowView.swift
//  Twitter_SwiftUI
//
//  Created by Vamsi Chaudhary on 16/07/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 48)
                .foregroundColor(.blue)
            VStack(alignment: .leading, spacing: 4){
                Text("joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }.padding(.horizontal)
            .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
