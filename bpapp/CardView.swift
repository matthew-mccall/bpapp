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
            VStack(alignment: .leading) {
                HStack {
                    Text(post.username) // TODO: Link
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }
                Text(post.desc)
                    .padding([.leading, .bottom, .trailing])
            }
            .background(BGBlurView())

        }
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(username: "Matthew", imgURL: "", desc: "Hello, World!")
        CardView(post: post)
    }
}
