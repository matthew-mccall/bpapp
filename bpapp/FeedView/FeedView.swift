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
    
    var scene: SKScene {
        let scene = BokehScene()
        scene.size = CGSize(width: 720, height: 1280)
        scene.scaleMode = .aspectFill
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .edgesIgnoringSafeArea(.all)
            if posts == nil {
                CardView(post: Post(username: "Error", imgURL: "", desc: "We have nothing to show"))
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
