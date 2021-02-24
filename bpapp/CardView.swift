//
//  CardView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI

struct CardView: View {
    
    public var post : Post
    
    @Environment(\.colorScheme) var colorScheme
    
    @ObservedObject var imageLoader : ImageLoader
    
    init(post: Post ) {
        self.post = post
        imageLoader = ImageLoader(urlString: post.imgURL)
    }
    
    var body: some View {
        Group {
            VStack(alignment: .leading) {
                HStack {
                    Text(post.username)
                        .font(.subheadline) // TODO: Link
                        .padding([.top, .leading, .trailing])
                    Spacer()
                }
                Image(uiImage: (imageLoader.img ?? UIImage(named: "720"))!)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .clipped()
                HStack {
                    Label(
                        title: { Text("\(post.likes ?? 0)") },
                        icon: {
                            Image(systemName: "heart")
                                .foregroundColor(.pink)
                        }
                    )
                }
                .padding(.leading)
                Text(post.desc)
                    .font(.body)
                    .padding(.all)
            }
            .background(colorScheme == .light ? Color.white : Color.black)
        }
        .cornerRadius(10)
        .shadow(color: Color.gray,radius: 10)
        .padding([.top, .leading, .trailing])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(username: "Matthew", desc: "Hello, World!", likes: 69)
        Group {
            CardView(post: post)
            CardView(post: post)
                .preferredColorScheme(.dark)
        }
    }
}
