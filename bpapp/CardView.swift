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
        Group {
            VStack(alignment: .leading) {
                HStack {
                    Text(post.username)
                        .font(.subheadline) // TODO: Link
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }
                if (post.imgURL == "") {
                    Divider()
                        .padding(.horizontal)
                }
                Text(post.desc)
                    .font(.body)
                    .padding([.leading, .bottom, .trailing])
            }
            .background(BGBlurView())

        }
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding([.top, .leading, .trailing])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(username: "Matthew", imgURL: "", desc: "Hello, World!")
        CardView(post: post)
    }
}
