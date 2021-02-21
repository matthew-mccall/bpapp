//
//  CardView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import SwiftUI

struct CardView: View {
    
    public var post : Post
    
    @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()
    
    init(post: Post ) {
        self.post = post
        imageLoader = ImageLoader(urlString: "https://pixfeeds.com/images/animals/red-pandas/1280-178167661-red-panda.jpg")
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
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .clipped()
                    .onReceive(imageLoader.didChange) { data in
                        self.image = UIImage(data: data)!
                    }
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
            .background(BGBlurView())

        }
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding([.top, .leading, .trailing])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(username: "Matthew", desc: "Hello, World!", likes: 69)
        CardView(post: post)
    }
}
