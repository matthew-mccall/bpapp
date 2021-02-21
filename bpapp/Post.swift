//
//  Post.swift
//  bpapp
//
//  Created by Matthew McCall on 2/21/21.
//

import Foundation

struct Post : Identifiable {
    var username: String
    var imgURL: String?
    var desc: String
    var id: String { NSUUID().uuidString }
}
