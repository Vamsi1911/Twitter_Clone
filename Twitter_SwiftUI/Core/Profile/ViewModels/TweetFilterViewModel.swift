//
//  TweetFilterNewModel.swift
//  Twitter_SwiftUI
//
//  Created by Vamsi Chaudhary on 14/07/23.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
    
}
