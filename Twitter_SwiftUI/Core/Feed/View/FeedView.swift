//
//  FeedView.swift
//  Twitter_SwiftUI
//
//  Created by Vamsi Chaudhary on 14/07/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing)
        {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id: \.self){ _ in
                        TweetRowView()
                    }
                }
            }
            Button{
                showNewTweetView.toggle()
            }label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
//            .fullScreenCover(isPresented: $showNewTweetView, content: <#T##() -> View#>)÷
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
