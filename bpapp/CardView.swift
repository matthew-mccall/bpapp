//
//  CardView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI

struct CardView: View {
    
    public var post : Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(post.username) // TODO: Link
                    .padding()
                Spacer()
            }
            Text(post.desc)
                .padding()
        }
        .cornerRadius(32)
        .shadow(radius: 16)
        .background(BGBlurView())
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let post = Post(username: "Matthew", imgURL: "", desc: "Hello, World!")
        
        CardView(post: post)
    }
}
