//
//  SideMenuView.swift
//  Twitter_SwiftUI
//
//  Created by Vamsi Chaudhary on 16/07/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48)
                VStack(alignment: .leading, spacing: 4){
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView().padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){
                option in
                if option == .profile{
                    NavigationLink{
                        ProfileView()
                    }label: {
                        SideMenuRowView(viewModel: option)
                    }
                }else if option == .logout{
                    Button{
                        print("Handle Logout Here..")
                    }label:{
                        SideMenuRowView(viewModel: option)
                    }
                }else {
                    SideMenuRowView(viewModel: option)
                }
                
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


