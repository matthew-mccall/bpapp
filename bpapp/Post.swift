//
//  Post.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import Foundation

struct Post : Identifiable {
    var username: String
    var imgURL: String = "https://pixfeeds.com/images/animals/red-pandas/1280-178167661-red-panda.jpg"
    var desc: String
    var id: String { NSUUID().uuidString }
    var likes: UInt64? = nil
    var comments: [String]? = nil
    var tag: [Tag]? = nil
}
