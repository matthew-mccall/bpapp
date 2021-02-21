//
//  FeedView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI
import SpriteKit

struct FeedView: View {
    
    public var posts: [Post]? = nil
    
    var body: some View {
        if posts == nil {
            Text("We do not have anything to show")
        } else {
            NavigationView {
                    ScrollView {
                        VStack {
                            ForEach(posts!) { post in
                                CardView(post: post)
                            }
                        }
                }
                .navigationBarTitle("Feed")
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeedView()
            FeedView(posts: [
                Post(username: "_mmapp", imgURL: "", desc: "Hello!")
            ])
        }
    }
}
